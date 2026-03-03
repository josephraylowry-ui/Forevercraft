# Spirit Wolf lore update on level-up
# Line 7: Spectral Form speed % (level * 0.5 = 0.5-50%)
# Line 12: Soul Drain lifesteal % (level * 0.25 = 0.25-25%)

execute store result storage evercraft:companions math.speed_percent float 0.5 run scoreboard players get #current_level Pets.EXP
execute store result storage evercraft:companions math.lifesteal float 0.25 run scoreboard players get #current_level Pets.EXP

# Update speed % (line index 7)
data modify entity @s item.components."minecraft:lore"[7].extra[0].text set string storage evercraft:companions math.speed_percent 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Spirit Wolf"}]}}}].components."minecraft:lore"[7].extra[0].text set string storage evercraft:companions math.speed_percent 0 -1

# Update lifesteal % (line index 12)
data modify entity @s item.components."minecraft:lore"[12].extra[0].text set string storage evercraft:companions math.lifesteal 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Spirit Wolf"}]}}}].components."minecraft:lore"[12].extra[0].text set string storage evercraft:companions math.lifesteal 0 -1

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/spirit_wolf
