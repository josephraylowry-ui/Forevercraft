# Combat Effect: Frost — Slowness II for 3 seconds
effect give @e[tag=pc.target,limit=1] slowness 3 1
execute at @e[tag=pc.target,limit=1] run particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0.05 15
execute at @e[tag=pc.target,limit=1] run playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 0.8 0.8
