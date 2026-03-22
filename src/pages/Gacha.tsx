import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

const PULL_OPTIONS = [
  { name: 'Single Pull', cost: '5 Coins', description: 'One random item from the fountain pool. Could be anything from an Awakening Stone to a rare Dream consumable.' },
  { name: 'Multi Pull (x10)', cost: '50 Coins', description: 'Ten items at once. Better value, more chances at rare drops. The anticipation is real.' },
  { name: 'Lucid Claim', cost: 'Free', description: 'Claim your accumulated Lucid — a special currency earned through pulls that can be exchanged for targeted rewards.' },
  { name: 'Dreamdust Exchange', cost: 'Varies', description: 'Trade Dreamdust for specific items: Companion Treats, Awakening Stones, Tree Tokens, and more.' },
]

const REWARD_POOL = [
  { name: 'Crumb of Dreams', rarity: '+1 permanent DR', color: 'text-yellow-400' },
  { name: 'Companion Treats', rarity: 'All tiers', color: 'text-green-400' },
  { name: 'Awakening Stones', rarity: 'All tiers', color: 'text-purple-400' },
  { name: 'Tree Tokens', rarity: 'Skill tree currency', color: 'text-cyan-400' },
  { name: 'Dungeon Keys', rarity: 'Castle entry', color: 'text-red-400' },
  { name: 'Rare Consumables', rarity: 'Potions & items', color: 'text-orange-400' },
  { name: 'Cosmetic Items', rarity: 'Visual rewards', color: 'text-pink-400' },
  { name: 'Dreamdust', rarity: 'Exchange currency', color: 'text-blue-400' },
]

export default function Gacha() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="FOUNTAIN OF ETERNAL DREAMS"
        badge="THE GACHA"
        subtitle="Place a Dreamdust Fountain. Feed it coins. Watch the magic unfold."
        particleColor="#a855f7"
      />

      {/* How It Works */}
      <section className="max-w-6xl mx-auto px-6 py-16">
        <ScrollReveal>
          <div className="text-center mb-12">
            <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">HOW IT WORKS</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Place a Dreamdust Fountain in the world. Feed it Fountain Coins earned from patrons,
              dungeons, bounties, bosses, constellations, and pet activities. Each pull draws from
              a weighted reward pool with animated reveals.
            </p>
          </div>
        </ScrollReveal>

        <div className="grid md:grid-cols-2 gap-4 max-w-3xl mx-auto mb-16">
          {PULL_OPTIONS.map((opt, i) => (
            <ScrollReveal key={opt.name} delay={i * 80}>
              <div className="rounded-lg border border-purple-900/30 bg-purple-950/15 p-5 h-full">
                <div className="flex items-baseline justify-between mb-2">
                  <h3 className="font-['Press_Start_2P'] text-[0.5rem] text-purple-400">{opt.name}</h3>
                  <span className="font-['Press_Start_2P'] text-[0.35rem] text-yellow-500">{opt.cost}</span>
                </div>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">{opt.description}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </section>

      {/* Reward Pool */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">REWARD POOL</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                Every pull draws from this pool. Some items are common, others exceptionally rare.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid grid-cols-2 md:grid-cols-4 gap-3 max-w-3xl mx-auto">
            {REWARD_POOL.map((reward, i) => (
              <ScrollReveal key={reward.name} delay={i * 50}>
                <div className="rounded-lg border border-stone-800 bg-stone-900/40 p-4 text-center h-full">
                  <h3 className={`font-['Press_Start_2P'] text-[0.4rem] ${reward.color} mb-2`}>{reward.name}</h3>
                  <p className="font-['Crimson_Pro'] text-xs text-stone-500">{reward.rarity}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>

          <ScrollReveal delay={400}>
            <div className="mt-8 max-w-xl mx-auto text-center">
              <div className="rounded-lg border border-yellow-800/30 bg-yellow-950/10 p-4">
                <p className="font-['Press_Start_2P'] text-[0.4rem] text-yellow-500 mb-2">CRUMB OF DREAMS</p>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">
                  The Crumb of Dreams (+1 permanent DR) is a gacha-exclusive drop. It cannot be found
                  anywhere else in the game. Keep pulling.
                </p>
              </div>
            </div>
          </ScrollReveal>
        </div>
      </section>

      {/* Currencies */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">CURRENCIES</h2>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-3 gap-4 max-w-3xl mx-auto">
            <ScrollReveal delay={0}>
              <div className="rounded-lg border border-yellow-900/30 bg-yellow-950/10 p-5 text-center h-full">
                <p className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-400 mb-2">FOUNTAIN COINS</p>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">Primary pull currency. Earned from patron kills, dungeons, bounties, bosses, and pet activities.</p>
              </div>
            </ScrollReveal>
            <ScrollReveal delay={80}>
              <div className="rounded-lg border border-purple-900/30 bg-purple-950/10 p-5 text-center h-full">
                <p className="font-['Press_Start_2P'] text-[0.5rem] text-purple-400 mb-2">LUCID</p>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">Bonus currency from pulls. Accumulates over time for guaranteed targeted rewards.</p>
              </div>
            </ScrollReveal>
            <ScrollReveal delay={160}>
              <div className="rounded-lg border border-cyan-900/30 bg-cyan-950/10 p-5 text-center h-full">
                <p className="font-['Press_Start_2P'] text-[0.5rem] text-cyan-400 mb-2">DREAMDUST</p>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">Exchange currency for the Dreamdust shop. Buy specific items instead of gambling.</p>
              </div>
            </ScrollReveal>
          </div>

          <Spoiler label="Gacha mechanics in depth...">
            <div className="space-y-3 font-['Crimson_Pro'] text-sm text-stone-400">
              <p><span className="text-yellow-500 font-semibold">Placement:</span> Place a Dreamdust Fountain in the world. It becomes a permanent station anyone can use.</p>
              <p><span className="text-yellow-500 font-semibold">Pull Tracking:</span> Your total pulls are tracked per-player. The fountain remembers your history and luck.</p>
              <p><span className="text-yellow-500 font-semibold">Balance Check:</span> Use the fountain GUI to check your current Fountain Coin balance before pulling.</p>
              <p><span className="text-yellow-500 font-semibold">Info Panel:</span> The [?] button in the fountain menu shows full rules and odds for transparency.</p>
            </div>
          </Spoiler>
        </div>
      </section>
    </div>
  )
}
