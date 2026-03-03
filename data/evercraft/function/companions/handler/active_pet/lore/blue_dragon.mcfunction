execute store result storage evercraft:companions math.damage_increase int 3 run scoreboard players get #current_level Pets.EXP

data modify entity @s item.components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.damage_increase
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Endwalker"}]}}}].components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.damage_increase

execute if score #current_level Pets.EXP matches 25..49 run data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Endwalker"}]}}}].components."minecraft:lore"[9].extra[0].text set value "150"
execute if score #current_level Pets.EXP matches 50..74 run data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Endwalker"}]}}}].components."minecraft:lore"[9].extra[0].text set value "120"
execute if score #current_level Pets.EXP matches 75..99 run data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Endwalker"}]}}}].components."minecraft:lore"[9].extra[0].text set value "90"
execute if score #current_level Pets.EXP matches 100 run data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Endwalker"}]}}}].components."minecraft:lore"[9].extra[0].text set value "60"

execute as @p[tag=Pets.Owner, limit=1] at @s if dimension the_end run function evercraft:companions/handler/active_pet/abilities/passive/blue_dragon