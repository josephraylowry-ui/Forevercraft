execute store result storage evercraft:companions math.slow_falling_time int 0.1 run scoreboard players get #current_level Pets.EXP
execute store result score #slow_falling_time Pets.Calc run data get storage evercraft:companions math.slow_falling_time 2

scoreboard players set #effect_time Pets.Calc 30
scoreboard players operation #effect_time Pets.Calc -= #slow_falling_time Pets.Calc

execute store result storage evercraft:companions math.effect_time int 1 run scoreboard players get #effect_time Pets.Calc

data modify entity @s item.components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.effect_time
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Zephyr"}]}}}].components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.effect_time

function evercraft:companions/handler/active_pet/abilities/passive/chicken