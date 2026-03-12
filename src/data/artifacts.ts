export type Tier =
  | 'Common'
  | 'Uncommon'
  | 'Rare'
  | 'Ornate'
  | 'Exquisite'
  | 'Mythical'
export type ArtifactType = 'Weapon' | 'Armor' | 'Accessory' | 'Ring' | 'Healer'

export interface Artifact {
  id: number
  name: string
  tier: Tier
  type: ArtifactType
  description: string
  abilities: string[]
}

export const artifacts: Artifact[] = [
  {
    id: 1,
    name: 'Bone Slingshot',
    tier: 'Common',
    type: 'Weapon',
    description: 'A crude but reliable ranged weapon crafted from bone.',
    abilities: ['Fires projectiles at nearby enemies', 'Chance to slow on hit']
  },
  {
    id: 2,
    name: 'Medicinal Bandages',
    tier: 'Common',
    type: 'Healer',
    description: 'Simple wrappings infused with healing herbs.',
    abilities: ['Restores 1 heart on use', 'Short cooldown']
  },
  {
    id: 3,
    name: 'Amethyst Ring',
    tier: 'Uncommon',
    type: 'Ring',
    description: 'A polished ring that sharpens your sight in darkness.',
    abilities: ['Grants permanent Night Vision']
  },
  {
    id: 4,
    name: 'Ocean Trident',
    tier: 'Rare',
    type: 'Weapon',
    description: 'A biome-specific weapon forged for ocean fighters.',
    abilities: [
      'Deals bonus damage in water',
      'Chance to summon a wave on hit',
      'Lifesteal in rain'
    ]
  },
  {
    id: 5,
    name: 'Frost Bow',
    tier: 'Rare',
    type: 'Weapon',
    description: 'A bow carved from frozen wood, found only in icy biomes.',
    abilities: [
      'Freezes enemies on hit',
      'Overcharge for bonus knockback',
      'Passive frost aura'
    ]
  },
  {
    id: 6,
    name: 'Fireforged Chestplate',
    tier: 'Exquisite',
    type: 'Armor',
    description: 'Part of the Phoenix Rebirth set. Burns with an inner fire.',
    abilities: [
      'Phoenix Rebirth: auto-revive on death once per life',
      '2-piece: Fire Resistance',
      '4-piece: Strength I passively'
    ]
  },
  {
    id: 7,
    name: 'Void Ring',
    tier: 'Exquisite',
    type: 'Ring',
    description: 'A ring forged in the void itself.',
    abilities: ['Resistance I', 'Fire Immunity', 'Slow Falling — all passive']
  },
  {
    id: 8,
    name: 'Endless Ambrosia',
    tier: 'Exquisite',
    type: 'Healer',
    description: 'A divine healer that restores all nearby allies.',
    abilities: [
      'Fully restores health within 32 blocks',
      'Long cooldown',
      "Healer's Oath applies"
    ]
  },
  {
    id: 9,
    name: 'Dragon Fan',
    tier: 'Mythical',
    type: 'Weapon',
    description:
      'A mythical sword of devastating power with seven distinct abilities.',
    abilities: [
      'Launches mobs into the sky',
      'Breathes fire in a 15-block line',
      'Deals more damage the closer you are to death',
      'Chain lightning on hit',
      'Lifesteal',
      'Pulls enemies toward you',
      'Permanently raises Dream Rate when worn'
    ]
  },
  {
    id: 10,
    name: 'Butterfly Wings',
    tier: 'Mythical',
    type: 'Accessory',
    description: 'Delicate wings that carry a deadly secret.',
    abilities: [
      'Chaos Wings: 5% chance to instantly kill any enemy on hit',
      'Passive evasion boost'
    ]
  }
]

export const TIERS: Tier[] = [
  'Common',
  'Uncommon',
  'Rare',
  'Ornate',
  'Exquisite',
  'Mythical'
]
export const TYPES: ArtifactType[] = [
  'Weapon',
  'Armor',
  'Accessory',
  'Ring',
  'Healer'
]

export const TIER_COLORS: Record<Tier, string> = {
  Common: 'text-stone-400 border-stone-600 bg-stone-900/40',
  Uncommon: 'text-green-400 border-green-700 bg-green-950/40',
  Rare: 'text-blue-400 border-blue-700 bg-blue-950/40',
  Ornate: 'text-purple-400 border-purple-700 bg-purple-950/40',
  Exquisite: 'text-orange-400 border-orange-700 bg-orange-950/40',
  Mythical: 'text-yellow-400 border-yellow-600 bg-yellow-950/40'
}

export const TIER_BADGE: Record<Tier, string> = {
  Common: 'bg-stone-800 text-stone-300',
  Uncommon: 'bg-green-950 text-green-400',
  Rare: 'bg-blue-950 text-blue-400',
  Ornate: 'bg-purple-950 text-purple-400',
  Exquisite: 'bg-orange-950 text-orange-400',
  Mythical: 'bg-yellow-950 text-yellow-400'
}
