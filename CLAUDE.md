# Forevercraft Website

The official showcase site for the Forevercraft Minecraft datapack — 30 pages, 3,000+ knowledge base entries, Minecraft-inspired dark UI with animated effects.

**Live site:** forevercraft.co (Cloudflare Pages)
**Repo:** github.com/Forevercraftpal/Forevercraft (production)

## Tech Stack

| Layer | Tech |
|-------|------|
| Frontend | React 19 + TypeScript 5.9 |
| Routing | React Router DOM 7 |
| Styling | Tailwind CSS 4.2 (`@tailwindcss/vite` plugin — NOT the old PostCSS config) |
| Build | Vite 7.3 |
| Backend | Convex (optional — app degrades gracefully without it) |
| Package Manager | Bun |

## Critical Rules

- **Tier colors are sacred.** The 6-tier system (Common/Uncommon/Rare/Ornate/Exquisite/Mythical) has specific color mappings defined in `src/data/constants.ts`. Never deviate.
- **Fonts matter.** "Press Start 2P" for headings (pixel art feel), "Crimson Pro" for body. Don't mix them up.
- **Tailwind v4 uses `@tailwindcss/vite`**, not the old PostCSS plugin. This was the fix for the blank Vercel deploy. Don't regress.
- **Convex is optional.** If `VITE_CONVEX_URL` is missing, the app renders without backend (`main.tsx` graceful fallback). Don't make Convex required.

## Project Structure

```
src/
  App.tsx             # Router with 30 routes
  main.tsx            # React root + conditional ConvexProvider
  index.css           # Tailwind + global animations (hue shift)
  pages/              # 30 route pages (Home, Artifacts, Classes, Companions, etc.)
  components/
    layout/           # Navigation, Footer, PageHero
    ui/               # Accordion, Card3D, Tabs, TierBadge, Spoiler, etc.
    effects/          # StarField, ParticleField, ScrollReveal
    ai/               # ForevercraftAI chatbot (knowledge base powered)
  data/
    knowledge-base.ts # 3,000+ entries (1.2 MB) — the AI chatbot's brain
    artifacts.ts      # 408 artifacts
    companions.ts     # 102 companions
    spirit-weapons.ts # 14 spirit weapons
    constants.ts      # Tier colors, UI constants
    module-graph.json # Datapack module dependency graph
  hooks/
    useDownloadTracker.ts  # Cloudflare KV download counter
public/
  builds/             # Downloadable datapack ZIPs (Java + Bedrock)
  modules/            # 30 individual module ZIPs
  gallery/            # Gallery images
```

## Tier Color System

| Tier | Border | Background |
|------|--------|------------|
| Common | stone-600 | stone-900/40 |
| Uncommon | blue-600 | blue-950/30 |
| Rare | cyan-500 | cyan-950/30 |
| Ornate | purple-700 | purple-950/30 |
| Exquisite | fuchsia-700 | fuchsia-950/30 |
| Mythical | amber-500 | amber-950/30 |

## Dev Server

```bash
bun install
bun run dev         # Vite on port 5173
bun convex dev      # Convex on port 3210 (optional)
```

## Build & Deploy

- **Build:** `bun run build` (tsc + vite)
- **Deploy to production:** `git push fork website-expansion:main` (Cloudflare auto-deploys)
- **Datapack builds:** Run `~/Library/Application Support/minecraft/claude/build-datapack-zip.sh` to regenerate the Java ZIP from the live datapack
- **Resource packs:** Hosted on GitHub Releases (v1.0-resourcepacks tag), too large for git

## Git Remotes

- `origin` — Deiontre10/forevercraft (prototype)
- `fork` — Forevercraftpal/Forevercraft (production, deploys to forevercraft.co)

## Special Effects

- **Hue shift animation:** 120s rainbow cycle on backgrounds (defined in index.css)
- **Gallery counter-rotation:** Preserves true image colors while background rotates
- **StarField:** Fixed-position animated background layer
- **ScrollReveal:** Intersection Observer lazy-load animations
