execute store result storage evercraft:companions math.poison_time_reduction int 0.1 run scoreboard players get #current_level Pets.EXP
execute store result score #poison_time_reduction Pets.Calc run data get storage evercraft:companions math.poison_time_reduction 2

scoreboard players set #poison_time Pets.Calc 30
scoreboard players operation #poison_time Pets.Calc -= #poison_time_reduction Pets.Calc

execute store result storage evercraft:companions math.poison_time int 1 run scoreboard players get #poison_time Pets.Calc

data modify entity @s item.components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.poison_time
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Bramble"}]}}}].components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.poison_time

function evercraft:companions/handler/active_pet/abilities/passive/pufferfish