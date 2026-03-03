# Combat Effect: Void Pull — Levitation for 1.5 seconds
effect give @e[tag=pc.target,limit=1] levitation 1 1
execute at @e[tag=pc.target,limit=1] run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 20
execute at @e[tag=pc.target,limit=1] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.6 0.6
