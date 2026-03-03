# Combat Effect: Poison — Poison I for 3 seconds
effect give @e[tag=pc.target,limit=1] poison 3 0
execute at @e[tag=pc.target,limit=1] run particle item_slime ~ ~1 ~ 0.3 0.5 0.3 0.1 12
execute at @e[tag=pc.target,limit=1] run playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 0.6 1.3
