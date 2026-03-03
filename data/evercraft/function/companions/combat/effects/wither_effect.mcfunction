# Combat Effect: Wither — Wither I for 3 seconds
effect give @e[tag=pc.target,limit=1] wither 3 0
execute at @e[tag=pc.target,limit=1] run particle smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 15
execute at @e[tag=pc.target,limit=1] run playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 0.5 1.5
