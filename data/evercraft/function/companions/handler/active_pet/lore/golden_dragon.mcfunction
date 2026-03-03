# Golden Dragon lore update on level-up
# Line 9: Draconic Might damage % (level * 1 = 1-100%)
# Line 17: Treasure Hunter crate chance % (level * 0.5 = 0.5-50%)

execute store result storage evercraft:companions math.damage_percent int 1 run scoreboard players get #current_level Pets.EXP
execute store result storage evercraft:companions math.crate_chance float 0.5 run scoreboard players get #current_level Pets.EXP

# Update damage % (line index 9)
data modify entity @s item.components."minecraft:lore"[9].extra[0].text set string storage evercraft:companions math.damage_percent
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Golden Dragon"}]}}}].components."minecraft:lore"[9].extra[0].text set string storage evercraft:companions math.damage_percent

# Update crate chance % (line index 17)
data modify entity @s item.components."minecraft:lore"[17].extra[0].text set string storage evercraft:companions math.crate_chance 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Golden Dragon"}]}}}].components."minecraft:lore"[17].extra[0].text set string storage evercraft:companions math.crate_chance 0 -1

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/golden_dragon
