/**
 * Forevercraft Modular Build API
 * Cloudflare Pages Function
 *
 * POST /api/build
 * Body: { modules: ["core", "cooking", "housing"] }
 * Response: JSON with download URL or build status
 *
 * Architecture:
 * - Reads module graph from static data
 * - Resolves dependencies
 * - For pre-built combos: returns cached ZIP URL from R2
 * - For custom combos: triggers async build or returns instructions
 */

interface Env {
  DATAPACK_BUCKET?: R2Bucket
}

interface BuildRequest {
  modules: string[]
}

// Inline module graph for dependency resolution
import graphData from '../../src/data/module-graph.json'

const MODULES = graphData.modules
const EDGES = graphData.edges

function resolveRequired(selected: string[]): string[] {
  const resolved = new Set<string>(['core'])
  const queue = [...selected, 'core']

  while (queue.length) {
    const current = queue.pop()!
    if (resolved.has(current)) continue
    resolved.add(current)

    for (const edge of EDGES) {
      if (edge.from === current && edge.type === 'required' && !resolved.has(edge.to)) {
        queue.push(edge.to)
      }
    }
  }

  // Remove full-pack-only modules
  for (const m of MODULES) {
    if ((m as any).fullPackOnly && resolved.has(m.id) && !selected.includes(m.id)) {
      resolved.delete(m.id)
    }
  }

  return [...resolved].sort()
}

function getComboHash(modules: string[]): string {
  return modules.sort().join('+')
}

// Pre-built combo mapping (hash → R2 key or GitHub release URL)
const PRE_BUILT: Record<string, string> = {
  // These will be populated as we pre-build common combos
  // 'core': '/builds/forevercraft-core.zip',
}

export const onRequestPost: PagesFunction<Env> = async (context) => {
  try {
    const body = await context.request.json() as BuildRequest

    if (!body.modules || !Array.isArray(body.modules)) {
      return new Response(JSON.stringify({ error: 'Missing modules array' }), {
        status: 400,
        headers: { 'Content-Type': 'application/json' }
      })
    }

    // Resolve dependencies
    const resolved = resolveRequired(body.modules)
    const hash = getComboHash(resolved)

    // Calculate stats
    const totalFiles = MODULES
      .filter(m => resolved.includes(m.id))
      .reduce((sum, m) => sum + m.fileCount, 0)

    // Check for optional dependency warnings
    const warnings = EDGES
      .filter(e => resolved.includes(e.from) && !resolved.includes(e.to) && e.type === 'optional')
      .map(e => ({
        module: e.from,
        missing: e.to,
        reason: (e as any).reason || 'integration feature'
      }))

    // Check for pre-built combo
    if (PRE_BUILT[hash]) {
      return new Response(JSON.stringify({
        status: 'ready',
        downloadUrl: PRE_BUILT[hash],
        resolved,
        totalFiles,
        warnings,
        cached: true
      }), {
        headers: { 'Content-Type': 'application/json' }
      })
    }

    // Check R2 cache
    if (context.env.DATAPACK_BUCKET) {
      const cached = await context.env.DATAPACK_BUCKET.get(`builds/${hash}.zip`)
      if (cached) {
        return new Response(cached.body, {
          headers: {
            'Content-Type': 'application/zip',
            'Content-Disposition': `attachment; filename="Forevercraft-Custom.zip"`,
            'Cache-Control': 'public, max-age=86400'
          }
        })
      }
    }

    // No pre-built or cached version — return build instructions
    return new Response(JSON.stringify({
      status: 'not_cached',
      message: 'Custom build not yet cached. Use the Python build script locally.',
      resolved,
      totalFiles,
      warnings,
      buildCommand: `python3 build/scripts/build.py --modules ${resolved.join(',')} --output ./Forevercraft`,
      hash
    }), {
      headers: { 'Content-Type': 'application/json' }
    })

  } catch (err) {
    return new Response(JSON.stringify({ error: 'Build failed', details: String(err) }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' }
    })
  }
}

// Also handle GET for health check
export const onRequestGet: PagesFunction<Env> = async () => {
  return new Response(JSON.stringify({
    status: 'ok',
    modules: MODULES.length,
    edges: EDGES.length,
    version: '1.0.0'
  }), {
    headers: { 'Content-Type': 'application/json' }
  })
}
