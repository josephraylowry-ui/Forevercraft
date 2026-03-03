execute store result storage evercraft:companions math.attack_speed int 1 run scoreboard players get #current_level Pets.EXP

data modify storage evercraft:companions math.death_aura set value "15"
execute if score #current_level Pets.EXP matches 50..99 run data modify storage evercraft:companions math.death_aura set value "20"
execute if score #current_level Pets.EXP matches 100 run data modify storage evercraft:companions math.death_aura set value "25"

data modify entity @s item.components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.death_aura
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Dark One"}]}}}].components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.death_aura

data modify entity @s item.components."minecraft:lore"[12].extra[0].text set string storage evercraft:companions math.attack_speed
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Dark One"}]}}}].components."minecraft:lore"[12].extra[0].text set string storage evercraft:companions math.attack_speed

execute as @p[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/reaper