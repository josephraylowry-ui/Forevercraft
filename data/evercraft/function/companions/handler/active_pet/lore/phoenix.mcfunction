execute store result storage evercraft:companions math.fire_time float 0.1 run scoreboard players get #current_level Pets.EXP

data modify storage evercraft:companions math.totem_cooldown set value "24"
execute if score #current_level Pets.EXP matches 50..99 run data modify storage evercraft:companions math.totem_cooldown set value "18"
execute if score #current_level Pets.EXP matches 100 run data modify storage evercraft:companions math.totem_cooldown set value "12"

data modify entity @s item.components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.fire_time 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Emberheart"}]}}}].components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.fire_time 0 -1

data modify entity @s item.components."minecraft:lore"[9].extra[0].text set string storage evercraft:companions math.totem_cooldown
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Emberheart"}]}}}].components."minecraft:lore"[9].extra[0].text set string storage evercraft:companions math.totem_cooldown

execute as @p[tag=Pets.Owner, limit=1] at @s if dimension the_end run function evercraft:companions/handler/active_pet/abilities/passive/phoenix