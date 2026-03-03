# Combat Effect: Stun — Slowness III + Weakness I for 2 seconds
effect give @e[tag=pc.target,limit=1] slowness 2 2
effect give @e[tag=pc.target,limit=1] weakness 2 0
execute at @e[tag=pc.target,limit=1] run particle cloud ~ ~1 ~ 0.3 0.5 0.3 0.05 10
execute at @e[tag=pc.target,limit=1] run playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 0.7 0.7
