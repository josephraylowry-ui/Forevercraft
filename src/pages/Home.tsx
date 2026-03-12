export default function Home() {
  return (
    <>
      <link
        href='https://fonts.googleapis.com/css2?family=Press+Start+2P&family=Crimson+Pro:ital,wght@0,400;0,600;1,400&display=swap'
        rel='stylesheet'
      />
      <div className='min-h-screen bg-stone-950 text-stone-200'>
        {/* Hero */}
        <div className='relative border-b border-yellow-900/40 bg-[radial-gradient(ellipse_at_top,_#2a1a0a_0%,_#0a0906_70%)]'>
          <div className='max-w-4xl mx-auto px-6 py-24 text-center'>
            <p className="font-['Press_Start_2P'] text-[0.55rem] text-yellow-600 tracking-[0.3em] mb-6 uppercase">
              A Fantasy Minecraft Overhaul
            </p>
            <h1 className="font-['Press_Start_2P'] text-3xl md:text-5xl text-yellow-400 mb-6 leading-tight drop-shadow-[0_0_30px_rgba(200,140,40,0.4)]">
              FOREVERCRAFT
            </h1>
            <p className="font-['Crimson_Pro'] italic text-xl text-stone-400 mb-10">
              Every world has loot. This one has dreams.
            </p>
            <div className="flex flex-wrap justify-center gap-3 text-[0.6rem] font-['Press_Start_2P']">
              {[
                '334 Artifacts',
                '100 Companions',
                '13 Skill Trees',
                '250 Quests',
                '904 Lore',
                '7,375 Functions'
              ].map((stat) => (
                <span
                  key={stat}
                  className='bg-yellow-950/60 border border-yellow-800/50 text-yellow-500 px-3 py-2 rounded'
                >
                  {stat}
                </span>
              ))}
            </div>
          </div>
        </div>

        {/* Bio */}
        <div className="max-w-4xl mx-auto px-6 py-16 space-y-16 font-['Crimson_Pro'] text-lg leading-relaxed">
          {/* Intro */}
          <Section title='The Vision'>
            <p>
              Forevercraft is a complete Fantasy transformation of vanilla
              Minecraft — built over hundreds of hours, one function at a time.
              It doesn't replace the game you love. It gives it depth. A reason
              to keep mining after diamonds. A reason to fish in the rain. A
              reason to walk into a structure you've seen a hundred times and
              feel something new.
            </p>
            <p className='mt-4'>
              At its core is the{' '}
              <span className='text-yellow-500 font-semibold'>Dream Rate</span>{' '}
              — a custom RNG system that ties your entire journey together.
              Everything you do builds toward it. The artifacts you wear, the
              pets you raise, the potions you brew, the constellations you
              complete, the time of day, even the phase of the moon. Start at
              zero. Reach for 50. The world opens up as you do.
            </p>
          </Section>

          <Divider />

          {/* Artifacts */}
          <Section title='Artifacts'>
            <p>
              334 unique items across six tiers — from a humble Bone Slingshot
              to the Dragon Fan, a mythical sword with seven distinct abilities.
              Every artifact has handcrafted abilities instead of vanilla
              enchantments, which means you're free to enchant them however you
              like on top of what they already do.
            </p>
            <p className='mt-4'>
              46 accessories grant passive effects just by sitting in your
              inventory. 13 rings with their own passive system. 27 full armor
              sets with 2-piece and 4-piece bonuses — seven mythical sets that
              permanently raise your Dream Rate.
            </p>
            <p className='mt-4'>
              The{' '}
              <span className='text-yellow-500 font-semibold'>
                Patina system
              </span>{' '}
              tracks how long you've worn each artifact. Over time, a fresh
              artifact becomes Worn, then Seasoned, then Storied, and finally
              Legendary — gaining a permanent stat bonus. It's a system that
              rewards loyalty to the gear you love.
            </p>
          </Section>

          <Divider />

          {/* Classes */}
          <Section title='Classes'>
            <p>
              Four weapon classes let you commit to a fighting style and push it
              further than any single artifact could.
            </p>
            <div className='mt-6 grid grid-cols-1 md:grid-cols-2 gap-4'>
              {[
                {
                  name: 'Rogue',
                  desc: 'Dual-wield daggers with auto-swing, 30% speed bonus, and scaling multi-target strikes across 12 daggers.'
                },
                {
                  name: 'Beastlord',
                  desc: 'Spears that transform your tamed animals into a war pack. Warp Strike. Rally Cry. Nine spears across five tiers.'
                },
                {
                  name: 'Berserker',
                  desc: 'Dual axes trading armor for raw power. Rage mode, auto-Haste below half health, and a Dancer subclass for survivability.'
                },
                {
                  name: 'Archer',
                  desc: 'Overcharge your shots past full draw for bonus damage. Twelve bows with passive abilities. Disengage to escape danger.'
                }
              ].map((cls) => (
                <div
                  key={cls.name}
                  className='bg-stone-900/60 border border-yellow-900/40 rounded p-4'
                >
                  <h4 className="font-['Press_Start_2P'] text-[0.55rem] text-yellow-500 mb-2">
                    {cls.name.toUpperCase()}
                  </h4>
                  <p className='text-stone-400 text-base'>{cls.desc}</p>
                </div>
              ))}
            </div>
          </Section>

          <Divider />

          {/* Companions */}
          <Section title='Companions'>
            <p>
              100 companions, each one different. A Worm that makes you mine
              faster. An Owl that grants night vision and +5 permanent Dreams at
              max level. A Claude that detects ores through walls. A Golden
              Dragon that wraps you in dream rate, resistance, and fire immunity
              just by existing.
            </p>
            <p className='mt-4'>
              Companions level from 1 to 100. Feed them, build a relationship,
              reach{' '}
              <span className='text-yellow-500 font-semibold'>
                Eternal Bond
              </span>{' '}
              and every ability hits 50% harder. Neglect them and the bond
              decays. They feel like they matter — because they do.
            </p>
          </Section>

          <Divider />

          {/* The World */}
          <Section title='The World'>
            <p>
              Days last three times longer than vanilla. Four seasons cycle
              across a 64-day year, each bringing its own resource pack and
              transforming the visual landscape. Five named World Events can
              sweep across the land without warning — a Starfall, The Dreaming,
              an Abyssal Tremor, an Aurora Bloom, a Rift Echo.
            </p>
            <p className='mt-4'>
              Night Terrors stalk players who push their Dream Rate past 30. On
              New Moon nights, a scaled mini-boss spawns near you — glowing dark
              red, fire-resistant, and hunting. Kill it for a reward. Run and it
              despawns at dawn. The higher your Dream Rate, the more the world
              notices you.
            </p>
          </Section>

          <Divider />

          {/* Quests */}
          <Section title='Quests & Bounties'>
            <p>
              250 quests across six tiers — Errand, Task, Contract, Commission,
              Expedition, and Heroic — offered daily at village quest boards.
              Each village tracks your reputation independently, rising from
              Stranger through Acquaintance, Friend, Ally, Hero, all the way to
              Legend.
            </p>
            <p className='mt-4'>
              The{' '}
              <span className='text-yellow-500 font-semibold'>
                Patron Bounty system
              </span>{' '}
              spawns named elite mobs in specific biomes, glowing red and
              waiting for you. Four bounty tiers with escalating difficulty and
              time limits. Kill the target and claim your reward. Fail and you
              walk home empty-handed.
            </p>
          </Section>

          <Divider />

          {/* Closing */}
          <section className='text-center py-8'>
            <p className="font-['Crimson_Pro'] italic text-2xl text-stone-400 max-w-2xl mx-auto leading-relaxed">
              "Somewhere in the middle of all of it, you're just playing
              Minecraft — except now, every single thing you do is quietly,
              gently, pulling you forward."
            </p>
            <p className="mt-6 font-['Press_Start_2P'] text-[0.5rem] text-yellow-700 tracking-widest">
              184,747 LINES OF CODE · 13,302 FILES · 7,375 FUNCTIONS
            </p>
          </section>
        </div>
      </div>
    </>
  )
}

function Section({
  title,
  children
}: {
  title: string
  children: React.ReactNode
}) {
  return (
    <section>
      <h2 className="font-['Press_Start_2P'] text-[0.7rem] text-yellow-600 tracking-widest mb-6 uppercase">
        {title}
      </h2>
      {children}
    </section>
  )
}

function Divider() {
  return (
    <div className='flex items-center gap-4'>
      <div className='flex-1 h-px bg-yellow-900/30' />
      <span className='text-yellow-800 text-xs'>⛏</span>
      <div className='flex-1 h-px bg-yellow-900/30' />
    </div>
  )
}
