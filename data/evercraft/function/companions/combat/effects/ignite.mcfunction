# Combat Effect: Ignite — Sets target on fire for 3 seconds
execute at @e[tag=pc.target,limit=1] run particle flame ~ ~1 ~ 0.3 0.5 0.3 0.05 20
execute at @e[tag=pc.target,limit=1] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.7 1.5
data modify entity @e[tag=pc.target,limit=1] Fire set value 60s
