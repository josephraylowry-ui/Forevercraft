# Armored Elytra — Ritual Effects
# Runs at the beacon position after merge/unmerge

# Lightning bolt (visual only — no damage since it hits the beacon)
summon lightning_bolt ~ ~ ~

# Particles — gold burst
particle dust_color_transition{from_color:[1.0,0.85,0.0],scale:2,to_color:[0.0,0.0,0.0]} ~ ~1 ~ 0.5 0.5 0.5 0.1 100
particle end_rod ~ ~1 ~ 0.5 1 0.5 0.05 50
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~

# Sounds
playsound minecraft:block.beacon.activate master @a[distance=..32] ~ ~ ~ 1.5 0.8
playsound minecraft:block.anvil.use master @a[distance=..32] ~ ~ ~ 1.0 1.2
playsound minecraft:entity.ender_dragon.growl master @a[distance=..32] ~ ~ ~ 0.5 1.5
