# Beastlord — Cat Warp Strike (per-cat)
# Runs as each cat near the beastlord player
# Cats attack CREEPERS ONLY — 7 damage per hit (3-shot on 20 HP creeper)

# Verify this cat belongs to the beastlord player
execute on owner unless entity @s[tag=bl.owner] run return 0

# Find nearest creeper within 16 blocks of the cat
execute at @s as @e[type=creeper,distance=..16,sort=nearest,limit=1] run tag @s add bl.warp_target

# No creeper? Exit
execute unless entity @e[tag=bl.warp_target] run return 0

# Soul particles at cat departure
execute at @s run particle soul ~ ~0.3 ~ 0.2 0.3 0.2 0.05 10

# Teleport cat to creeper
execute at @e[tag=bl.warp_target,limit=1] run tp @s ~ ~ ~

# Soul particles at arrival
execute at @s run particle soul ~ ~0.3 ~ 0.2 0.3 0.2 0.05 10

# Deal 7 damage to creeper (3 hits = 21 > 20 HP = dead)
damage @e[tag=bl.warp_target,limit=1] 7 minecraft:mob_attack by @s

# Cat hiss + soul escape sound
execute at @s run playsound minecraft:entity.cat.hiss player @a ~ ~ ~ 0.8 1.5
execute at @s run playsound minecraft:particle.soul_escape player @a ~ ~ ~ 0.6 1.2

# Cleanup
tag @e[tag=bl.warp_target] remove bl.warp_target
