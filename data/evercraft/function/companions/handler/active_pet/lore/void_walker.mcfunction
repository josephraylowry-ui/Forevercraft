# Void Walker lore update on level-up
# Line 6: Phase Shift speed % (level * 0.5 = 0.5-50%)
# Line 10: Void Touched speed % (level * 1 = 1-100%)
# Line 15: Dimensional Tear damage (level * 0.1 = 0.1-10)

execute store result storage evercraft:companions math.speed_percent float 0.5 run scoreboard players get #current_level Pets.EXP
execute store result storage evercraft:companions math.end_speed int 1 run scoreboard players get #current_level Pets.EXP
execute store result storage evercraft:companions math.tear_damage float 0.1 run scoreboard players get #current_level Pets.EXP

# Update speed % (line index 6)
data modify entity @s item.components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.speed_percent 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Void Walker"}]}}}].components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.speed_percent 0 -1

# Update End speed % (line index 10)
data modify entity @s item.components."minecraft:lore"[10].extra[0].text set string storage evercraft:companions math.end_speed
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Void Walker"}]}}}].components."minecraft:lore"[10].extra[0].text set string storage evercraft:companions math.end_speed

# Update tear damage (line index 15)
data modify entity @s item.components."minecraft:lore"[15].extra[0].text set string storage evercraft:companions math.tear_damage 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Void Walker"}]}}}].components."minecraft:lore"[15].extra[0].text set string storage evercraft:companions math.tear_damage 0 -1

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/void_walker
