# Entity Hit System cooldown
scoreboard players remove @s[scores={mt.entity=1..}] mt.entity 1
tag @s[scores={mt.entity=..0}] remove mt.entity

# Timers
execute if entity @s[tag=mt.hit_by_ice] run function evercraft:treasure/items/armor/ice/timer
execute if entity @s[tag=mt.hit_by_rumble] run function evercraft:treasure/items/weapons/rumble_axe/timer
execute if entity @s[scores={mt.wet=1..}] run function evercraft:treasure/items/weapons/oceanic_spear/wet
execute if entity @s[scores={mt.absorb_steal=1..}] run function evercraft:treasure/runes/piglin/timer

execute if entity @s[tag=mt.common,scores={mt.plot=1..}] positioned ~ ~0.5 ~ run function evercraft:treasure/particles/common/animate
execute if entity @s[tag=mt.uncommon,scores={mt.plot=1..}] positioned ~ ~0.5 ~ run function evercraft:treasure/particles/uncommon/animate
execute if entity @s[tag=mt.rare,scores={mt.plot=1..}] positioned ~ ~0.5 ~ run function evercraft:treasure/particles/rare/animate
# Luck-gate at spawn moment (plot=1): downgrade tag if nearest player lacks luck
# Must run BEFORE all animate calls so downgraded tags get correct animation
# Mythical first (may cascade to exquisite), then exquisite (may cascade to ornate), then ornate
execute if entity @s[tag=mt.mythical,scores={mt.plot=1}] run function evercraft:treasure/treasure/luck/gate_mythical
execute if entity @s[tag=mt.exquisite,scores={mt.plot=1}] run function evercraft:treasure/treasure/luck/gate_exquisite
execute if entity @s[tag=mt.ornate,scores={mt.plot=1}] run function evercraft:treasure/treasure/luck/gate_ornate
execute if entity @s[tag=mt.ornate,scores={mt.plot=1..}] positioned ~ ~0.5 ~ run function evercraft:treasure/particles/ornate/animate
execute if entity @s[tag=mt.exquisite,scores={mt.plot=1..}] run function evercraft:treasure/particles/exquisite/animate
execute if entity @s[tag=mt.mythical,scores={mt.plot=1..}] run function evercraft:treasure/particles/mythical/animate

# Custom Weapons with Armor Stand detection
execute if entity @s[tag=mt.deto_mine] run function evercraft:treasure/items/weapons/deto_mine/main

# Treasure Container System (scoreboard-based replacement for enchantments)
execute if entity @s[tag=mt.treasure_container] run function evercraft:treasure/treasure/container/tick

# Biome test timer (despawn after 3 minutes)
execute if entity @s[tag=mt.biome_test,scores={mt.plot=1..}] run scoreboard players remove @s mt.plot 1
execute if entity @s[tag=mt.biome_test,scores={mt.plot=0}] run function evercraft:treasure/test/cleanup_biome_chests