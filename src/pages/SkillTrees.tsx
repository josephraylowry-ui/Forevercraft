import { useState } from 'react'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

const TREES = [
  { name: 'Agility', column: 'adventure', icon: '💨', desc: '+4% movement speed per level. Leveled by blocks walked (4k to 100k).', prestige: 'Phantom Sprint — brief intangibility while sprinting' },
  { name: 'Dexterity', column: 'adventure', icon: '🎯', desc: '+2% block reach per level. Leveled by blocks placed (4k to 100k).', prestige: 'Perfect Strike — 10% chance for unblockable hits' },
  { name: 'Evasion', column: 'adventure', icon: '🌀', desc: '+1% dodge chance per level. Leveled by times hit by mobs (400 to 10k).', prestige: 'Afterimage — dodged attacks leave a decoy for 2s' },
  { name: 'Stealth', column: 'adventure', icon: '👁️', desc: '+4% crouch speed per level. Leveled by blocks crouched (2k to 50k).', prestige: 'Shadow Meld — become fully invisible while crouching in darkness' },
  { name: 'Vitality', column: 'adventure', icon: '❤️', desc: '+1 heart per level (from Lv.5). Leveled by fruits & veggies eaten (400 to 10k).', prestige: 'Second Wind — auto-heal 4 hearts when dropping below 20% HP' },
  { name: 'Taskmaster', column: 'progression', icon: '📋', desc: '+4% quest XP and reputation per level. Leveled by quests completed (100 to 2.5k).', prestige: 'Double Down — 15% chance for double quest rewards' },
  { name: 'Beastmaster', column: 'progression', icon: '🐺', desc: 'Tamed wolves deal more damage each level. Leveled by pets at max level (1 to 25).', prestige: 'Alpha Call — summon spectral wolves to fight for 30s' },
  { name: 'Victorian', column: 'progression', icon: '🏪', desc: '+4% crate and patron XP per level. Leveled by mobs slain (2k to 50k).', prestige: 'Merchant Prince — unlock exclusive legendary trades' },
  { name: 'Culinary', column: 'progression', icon: '🍳', desc: '+10% Well-Fed duration per 5 levels. Leveled by meals cooked (50 to 1.25k).', prestige: 'Chef\'s Kiss — meals grant a random bonus buff' },
  { name: 'Fishing', column: 'gathering', icon: '🎣', desc: 'Multi-catch chance +0.625% per level. Leveled by fish caught (2k to 50k).', prestige: 'Master Angler — exclusive legendary fish pool unlocked' },
  { name: 'Mining', column: 'gathering', icon: '⛏️', desc: 'Miner\'s Surge haste chance, grows stronger each tier. Leveled by blocks mined (40k to 1M).', prestige: 'Ore Sense — nearby ores glow through walls briefly' },
  { name: 'Gathering', column: 'gathering', icon: '🌿', desc: 'Extra crop drops +0.625% per level. Leveled by crops harvested (1k to 25k).', prestige: 'Nature\'s Bounty — double crop/forage drops 10% of time' },
  { name: 'Blacksmith', column: 'gathering', icon: '🔨', desc: 'Nearby furnaces smelt faster each level. Leveled by items smelted (2k to 50k).', prestige: 'Master Forge — 5% chance to duplicate smelted items' },
  { name: 'Explorer', column: 'gathering', icon: '🧭', desc: 'Structure crate cooldown reduced by 4% per level. Leveled by structure crates looted (100 to 2.5k).', prestige: 'Pathfinder — reveal nearby undiscovered structures' },
]

const COLUMNS = [
  { id: 'adventure', name: 'Adventure', color: '#DC2626' },
  { id: 'progression', name: 'Progression', color: '#FBBF24' },
  { id: 'gathering', name: 'Gathering', color: '#22C55E' },
]

export default function SkillTrees() {
  const [selectedTree, setSelectedTree] = useState<string | null>(null)
  const selected = TREES.find(t => t.name === selectedTree)

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="SKILL TREES"
        badge="14 ADVANTAGE TREES"
        subtitle="25 levels each. 3 prestige cycles. 67 unique prestige abilities. Cross-tree synergies."
        particleColor="rgba(34, 197, 94, 0.3)"
      />

      <div className="max-w-7xl mx-auto px-6 py-16">
        {/* Three Column Layout */}
        <div className="grid md:grid-cols-3 gap-8 mb-12">
          {COLUMNS.map(col => (
            <ScrollReveal key={col.id}>
              <div>
                <h3 className="font-['Press_Start_2P'] text-[0.5rem] tracking-widest mb-4 text-center"
                    style={{ color: col.color }}>
                  {col.name.toUpperCase()}
                </h3>
                <div className="space-y-2">
                  {TREES.filter(t => t.column === col.id).map(tree => (
                    <button
                      key={tree.name}
                      onClick={() => setSelectedTree(selectedTree === tree.name ? null : tree.name)}
                      className={`w-full rounded border p-3 text-left transition-all duration-200 hover:scale-[1.02] ${
                        selectedTree === tree.name
                          ? 'border-yellow-500 bg-yellow-950/30'
                          : 'border-stone-700 bg-stone-900/50 hover:border-stone-600'
                      }`}
                    >
                      <div className="flex items-center gap-3">
                        <span className="text-xl">{tree.icon}</span>
                        <div>
                          <p className="font-['Press_Start_2P'] text-[0.42rem] text-stone-200">
                            {tree.name.toUpperCase()}
                          </p>
                          <p className="font-['Crimson_Pro'] text-stone-500 text-sm mt-0.5">
                            Level 1-25 · 3 Prestige
                          </p>
                        </div>
                      </div>
                    </button>
                  ))}
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>

        {/* Selected Tree Detail */}
        {selected && (
          <ScrollReveal>
            <div className="rounded-lg border border-yellow-900/40 bg-stone-900/40 p-6 md:p-8">
              <div className="flex items-center gap-3 mb-4">
                <span className="text-3xl">{selected.icon}</span>
                <div>
                  <h2 className="font-['Press_Start_2P'] text-lg text-yellow-400">
                    {selected.name.toUpperCase()}
                  </h2>
                  <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-500 tracking-widest">
                    LEVEL 1-25 · 3 PRESTIGE CYCLES · {selected.column.toUpperCase()}
                  </p>
                </div>
              </div>

              <p className="font-['Crimson_Pro'] text-stone-300 text-lg mb-6">{selected.desc}</p>

              {/* Visual Level Bar */}
              <div className="mb-6">
                <div className="flex gap-0.5">
                  {Array.from({ length: 25 }, (_, i) => (
                    <div
                      key={i}
                      className="flex-1 h-4 rounded-sm bg-yellow-600/30 hover:bg-yellow-500/60 transition-colors cursor-pointer relative group"
                      style={{ opacity: 0.3 + (i / 25) * 0.7 }}
                    >
                      <div className="absolute -top-6 left-1/2 -translate-x-1/2 font-['Press_Start_2P'] text-[0.3rem] text-yellow-500 opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap">
                        LV {i + 1}
                      </div>
                    </div>
                  ))}
                </div>
                <div className="flex justify-between mt-1">
                  <span className="font-['Press_Start_2P'] text-[0.3rem] text-stone-600">LV 1</span>
                  <span className="font-['Press_Start_2P'] text-[0.3rem] text-stone-600">LV 25</span>
                </div>
              </div>

              {/* Prestige */}
              <div className="bg-yellow-950/20 border border-yellow-800/30 rounded p-4">
                <h3 className="font-['Press_Start_2P'] text-[0.4rem] text-yellow-500 tracking-widest mb-2">
                  PRESTIGE ABILITY
                </h3>
                <p className="font-['Crimson_Pro'] text-stone-300">{selected.prestige}</p>
                <p className="font-['Crimson_Pro'] text-stone-500 text-sm mt-2">
                  Max a tree 3 times to unlock. Each prestige retains bonuses and raises the cap.
                </p>
              </div>
            </div>
          </ScrollReveal>
        )}

        {/* Advanced Mechanics */}
        <Spoiler label="Advanced systems: prestige, synergies, respec, and cosmetics...">
          <div className="space-y-4">
            <div>
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 tracking-widest mb-2">PRESTIGE SYSTEM</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                When a tree reaches Level 25, you can prestige it — resetting to Level 1 while retaining all accumulated bonuses. Each prestige cycle unlocks a unique prestige ability. A tree can be prestiged up to 3 times, with each cycle raising the effective cap and stacking bonuses.
              </p>
            </div>

            <div>
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 tracking-widest mb-2">CROSS-TREE SYNERGIES</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                Multi-specialization is rewarded through cross-tree synergies. Leveling trees across different columns unlocks hidden bonuses that encourage well-rounded builds rather than single-tree focus.
              </p>
            </div>

            <div>
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 tracking-widest mb-2">OPTIONAL CHALLENGES</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                Each tree offers optional challenges that award bonus XP and Tree Tokens when completed. You receive a progress notification at 75% completion to keep you motivated toward the finish line.
              </p>
            </div>

            <div>
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 tracking-widest mb-2">SEED OF FORGETTING</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                Made a build mistake? The Seed of Forgetting lets you respec a tree, resetting its level and refunding progress. Use it wisely — they are rare.
              </p>
            </div>

            <div className="rounded border border-purple-800/30 bg-purple-950/10 p-4">
              <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-purple-400 tracking-widest mb-2">COSMETIC CRATE</h3>
              <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                Spend 15 Tree Tokens to open a Cosmetic Crate containing one of 36 cosmetics: 18 particle effects spread across 4 zones (head, chest, feet, ambient) and 18 unique titles. All cosmetic, all permanent.
              </p>
            </div>
          </div>
        </Spoiler>
      </div>
    </div>
  )
}
