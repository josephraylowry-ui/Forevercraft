execute store result storage evercraft:companions math.detection_distance float 0.4 run scoreboard players get #current_level Pets.EXP
execute store result score #detection_distance Pets.Calc run data get storage evercraft:companions math.detection_distance 10
scoreboard players add #detection_distance Pets.Calc 100
execute store result storage evercraft:companions math.detection_distance float 0.1 run scoreboard players get #detection_distance Pets.Calc

data modify entity @s item.components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.detection_distance 0 -3
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Monolith"}]}}}].components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.detection_distance 0 -3

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/warden