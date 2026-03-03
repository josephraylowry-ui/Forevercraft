# Time Weaver lore update on level-up
# Line 6: Temporal Acceleration attack speed % (level * 1 = 1-100%)
# Line 10: Haste level (1-3 based on level ranges)
# Line 14: Slowness level applied to enemies

execute store result storage evercraft:companions math.attack_speed int 1 run scoreboard players get #current_level Pets.EXP

# Calculate haste level display (1-3)
scoreboard players set #haste_level Pets.Calc 1
execute if score #current_level Pets.EXP matches 33..66 run scoreboard players set #haste_level Pets.Calc 2
execute if score #current_level Pets.EXP matches 67..100 run scoreboard players set #haste_level Pets.Calc 3
execute store result storage evercraft:companions math.haste_level int 1 run scoreboard players get #haste_level Pets.Calc

# Calculate slowness level display (1-2)
scoreboard players set #slow_level Pets.Calc 1
execute if score #current_level Pets.EXP matches 51..100 run scoreboard players set #slow_level Pets.Calc 2
execute store result storage evercraft:companions math.slow_level int 1 run scoreboard players get #slow_level Pets.Calc

# Update attack speed % (line index 6)
data modify entity @s item.components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.attack_speed
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Time Weaver"}]}}}].components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.attack_speed

# Update haste level (line index 10)
data modify entity @s item.components."minecraft:lore"[10].extra[0].text set string storage evercraft:companions math.haste_level
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Time Weaver"}]}}}].components."minecraft:lore"[10].extra[0].text set string storage evercraft:companions math.haste_level

# Update slowness level (line index 14)
data modify entity @s item.components."minecraft:lore"[14].extra[0].text set string storage evercraft:companions math.slow_level
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Time Weaver"}]}}}].components."minecraft:lore"[14].extra[0].text set string storage evercraft:companions math.slow_level

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/time_weaver
