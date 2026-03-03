execute store result storage evercraft:companions math.speed_increase float 0.75 run scoreboard players get #current_level Pets.EXP

data modify entity @s item.components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.speed_increase 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Frostweaver"}]}}}].components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.speed_increase 0 -1

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/penguin