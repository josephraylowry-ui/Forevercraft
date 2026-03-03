# Claude Pet Lore Update
# Updates dynamic lore values on level-up

# Calculate damage boost percentage (5% at level 1, scales to 100% at level 100)
execute store result storage evercraft:companions math.damage_boost int 1 run scoreboard players get #current_level Pets.EXP

# Update Analytical Mind damage % (lore line 5)
data modify entity @s item.components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.damage_boost
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Claude"}]}}}].components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.damage_boost

# Update Analytical Mind range (lore line 6) - scales 8 to 28
execute store result storage evercraft:companions math.detect_range float 0.2 run scoreboard players get #current_level Pets.EXP
data modify entity @s item.components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.detect_range 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Claude"}]}}}].components."minecraft:lore"[6].extra[0].text set string storage evercraft:companions math.detect_range 0 -1

# Update Thoughtful Guidance radius (lore line 11) - same as detect range
data modify entity @s item.components."minecraft:lore"[11].extra[0].text set string storage evercraft:companions math.detect_range 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Claude"}]}}}].components."minecraft:lore"[11].extra[0].text set string storage evercraft:companions math.detect_range 0 -1

# Call passive ability
execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/claude
