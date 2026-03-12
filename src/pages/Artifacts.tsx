import { useState } from 'react'
import {
  artifacts,
  TIERS,
  TYPES,
  TIER_COLORS,
  TIER_BADGE,
  type Tier,
  type ArtifactType
} from '../data/artifacts'

export default function Artifacts() {
  const [search, setSearch] = useState('')
  const [selectedTier, setSelectedTier] = useState<Tier | 'All'>('All')
  const [selectedType, setSelectedType] = useState<ArtifactType | 'All'>('All')
  const [expanded, setExpanded] = useState<number | null>(null)

  const filtered = artifacts.filter((a) => {
    const matchSearch = a.name.toLowerCase().includes(search.toLowerCase())
    const matchTier = selectedTier === 'All' || a.tier === selectedTier
    const matchType = selectedType === 'All' || a.type === selectedType
    return matchSearch && matchTier && matchType
  })

  return (
    <>
      <link
        href='https://fonts.googleapis.com/css2?family=Press+Start+2P&family=Crimson+Pro:ital,wght@0,400;0,600;1,400&display=swap'
        rel='stylesheet'
      />
      <div className='min-h-screen bg-stone-950 text-stone-200'>
        {/* Header */}
        <div className='border-b border-yellow-900/40 bg-[radial-gradient(ellipse_at_top,_#2a1a0a_0%,_#0a0906_70%)]'>
          <div className='max-w-6xl mx-auto px-6 py-16 text-center'>
            <p className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-700 tracking-[0.3em] mb-4">
              ARTIFACT CODEX
            </p>
            <h1 className="font-['Press_Start_2P'] text-2xl md:text-4xl text-yellow-400 mb-4 drop-shadow-[0_0_20px_rgba(200,140,40,0.3)]">
              ARTIFACTS
            </h1>
            <p className="font-['Crimson_Pro'] italic text-stone-400 text-lg">
              334 unique items across six tiers. Every one handcrafted.
            </p>
          </div>
        </div>

        <div className='max-w-6xl mx-auto px-6 py-10'>
          {/* Filters */}
          <div className='flex flex-col md:flex-row gap-4 mb-10'>
            {/* Search */}
            <input
              type='text'
              placeholder='Search artifacts...'
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="flex-1 bg-stone-900 border border-yellow-900/50 rounded px-4 py-2 text-stone-200 placeholder-stone-600 font-['Crimson_Pro'] text-base focus:outline-none focus:border-yellow-700"
            />

            {/* Tier Filter */}
            <div className='flex gap-2 flex-wrap'>
              {(['All', ...TIERS] as const).map((tier) => (
                <button
                  key={tier}
                  onClick={() => setSelectedTier(tier)}
                  className={`font-['Press_Start_2P'] text-[0.45rem] px-3 py-2 rounded border transition-all ${
                    selectedTier === tier
                      ? 'bg-yellow-900/60 border-yellow-600 text-yellow-400'
                      : 'bg-stone-900 border-stone-700 text-stone-500 hover:border-yellow-900'
                  }`}
                >
                  {tier.toUpperCase()}
                </button>
              ))}
            </div>

            {/* Type Filter */}
            <div className='flex gap-2 flex-wrap'>
              {(['All', ...TYPES] as const).map((type) => (
                <button
                  key={type}
                  onClick={() => setSelectedType(type)}
                  className={`font-['Press_Start_2P'] text-[0.45rem] px-3 py-2 rounded border transition-all ${
                    selectedType === type
                      ? 'bg-yellow-900/60 border-yellow-600 text-yellow-400'
                      : 'bg-stone-900 border-stone-700 text-stone-500 hover:border-yellow-900'
                  }`}
                >
                  {type.toUpperCase()}
                </button>
              ))}
            </div>
          </div>

          {/* Count */}
          <p className="font-['Press_Start_2P'] text-[0.45rem] text-stone-600 mb-6 tracking-widest">
            {filtered.length} ARTIFACT{filtered.length !== 1 ? 'S' : ''} FOUND
          </p>

          {/* Grid */}
          {filtered.length === 0 ? (
            <div className='text-center py-24'>
              <p className="font-['Press_Start_2P'] text-[0.55rem] text-stone-600">
                NO ARTIFACTS FOUND
              </p>
            </div>
          ) : (
            <div className='grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4'>
              {filtered.map((artifact) => {
                const isExpanded = expanded === artifact.id
                return (
                  <div
                    key={artifact.id}
                    onClick={() => setExpanded(isExpanded ? null : artifact.id)}
                    className={`cursor-pointer rounded border p-5 transition-all duration-200 hover:scale-[1.02] ${TIER_COLORS[artifact.tier]}`}
                  >
                    {/* Top Row */}
                    <div className='flex items-start justify-between gap-2 mb-3'>
                      <h3 className="font-['Press_Start_2P'] text-[0.55rem] text-stone-100 leading-relaxed">
                        {artifact.name}
                      </h3>
                      <span
                        className={`font-['Press_Start_2P'] text-[0.4rem] px-2 py-1 rounded shrink-0 ${TIER_BADGE[artifact.tier]}`}
                      >
                        {artifact.tier.toUpperCase()}
                      </span>
                    </div>

                    {/* Type */}
                    <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-500 mb-3 tracking-widest">
                      {artifact.type.toUpperCase()}
                    </p>

                    {/* Description */}
                    <p className="font-['Crimson_Pro'] text-stone-400 text-base leading-snug mb-3">
                      {artifact.description}
                    </p>

                    {/* Abilities */}
                    {isExpanded && (
                      <div className='mt-3 pt-3 border-t border-stone-700/50 space-y-2'>
                        {artifact.abilities.map((ability, i) => (
                          <div key={i} className='flex gap-2 items-start'>
                            <span className='text-yellow-600 mt-0.5 shrink-0'>
                              ◆
                            </span>
                            <p className="font-['Crimson_Pro'] text-stone-300 text-base">
                              {ability}
                            </p>
                          </div>
                        ))}
                      </div>
                    )}

                    {/* Expand hint */}
                    <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-600 mt-3 tracking-widest">
                      {isExpanded ? '▲ HIDE ABILITIES' : '▼ VIEW ABILITIES'}
                    </p>
                  </div>
                )
              })}
            </div>
          )}
        </div>
      </div>
    </>
  )
}
