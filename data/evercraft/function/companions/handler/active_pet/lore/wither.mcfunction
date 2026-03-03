# Wither lore update on level-up
# Line 6: Soul Harvest XP bonus % (level * 0.5 = 0.5-50%)
# Line 11: Withering Aura level (1-2 based on level)
# Line 15: Undying Rage Strength level (1-3)

execute store result storage evercraft:companions math.xp_bonus float 0.5 run scoreboard players get #current_level Pets.EXP

# Calculate wither level display (1-2)
scoreboard players set #wither_level Pets.Calc 1
execute if score #current_level Pets.EXP matches 51..100 run scoreboard players set #wither_level Pets.Calc 2
execute store result storage evercraft:companions math.wither_level int 1 run scoreboard players get #wither_level Pets.Calc

# Calculate strength level display (1-3)
scoreboard players set #strength_level Pets.Calc 1
execute if score #current_level Pets.EXP matches 33..66 run scoreboard players set #strength_level Pets.Calc 2
execute if score #current_level Pets.EXP matches 67..100 run scoreboard players set #strength_level Pets.Calc 3
execute store result storage evercraft:companions math.strength_level int 1 run scoreboard players get #strength_level Pets.Calc

# Update XP bonus % (line index 6)
data modify entity @s item.components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.xp_bonus 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Wither"}]}}}].components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.xp_bonus 0 -1

# Update wither level (line index 11)
data modify entity @s item.components."minecraft:lore"[11].extra[0].text set string storage evercraft:companions math.wither_level
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Wither"}]}}}].components."minecraft:lore"[11].extra[0].text set string storage evercraft:companions math.wither_level

# Update strength level (line index 15)
data modify entity @s item.components."minecraft:lore"[15].extra[0].text set string storage evercraft:companions math.strength_level
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Wither"}]}}}].components."minecraft:lore"[15].extra[0].text set string storage evercraft:companions math.strength_level

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/wither
