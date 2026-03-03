# Snow Fox Spirit lore update on level-up
# Line 6: Arctic Grace speed % (level * 0.5 = 0.5-50%)
# Line 11: Frost Veil slowness level (1-2)
# Line 16: Spirit's Blessing luck bonus (1-5)

execute store result storage evercraft:companions math.speed_percent float 0.5 run scoreboard players get #current_level Pets.EXP

# Calculate slowness level display (1-2)
scoreboard players set #slow_level Pets.Calc 1
execute if score #current_level Pets.EXP matches 51..100 run scoreboard players set #slow_level Pets.Calc 2
execute store result storage evercraft:companions math.slow_level int 1 run scoreboard players get #slow_level Pets.Calc

# Calculate luck bonus display (1-5)
scoreboard players set #luck_bonus Pets.Calc 1
execute if score #current_level Pets.EXP matches 21..40 run scoreboard players set #luck_bonus Pets.Calc 2
execute if score #current_level Pets.EXP matches 41..60 run scoreboard players set #luck_bonus Pets.Calc 3
execute if score #current_level Pets.EXP matches 61..80 run scoreboard players set #luck_bonus Pets.Calc 4
execute if score #current_level Pets.EXP matches 81..100 run scoreboard players set #luck_bonus Pets.Calc 5
execute store result storage evercraft:companions math.luck_bonus int 1 run scoreboard players get #luck_bonus Pets.Calc

# Update speed % (line index 6)
data modify entity @s item.components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.speed_percent 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Snow Fox Spirit"}]}}}].components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.speed_percent 0 -1

# Update slowness level (line index 11)
data modify entity @s item.components."minecraft:lore"[11].extra[0].text set string storage evercraft:companions math.slow_level
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Snow Fox Spirit"}]}}}].components."minecraft:lore"[11].extra[0].text set string storage evercraft:companions math.slow_level

# Update luck bonus (line index 16)
data modify entity @s item.components."minecraft:lore"[16].extra[0].text set string storage evercraft:companions math.luck_bonus
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Snow Fox Spirit"}]}}}].components."minecraft:lore"[16].extra[0].text set string storage evercraft:companions math.luck_bonus

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/snow_fox_spirit
