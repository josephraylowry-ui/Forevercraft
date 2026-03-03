data modify entity @s item.components."minecraft:lore"[4].extra[0].text set string storage evercraft:companions leveling.level
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Prowler"}]}}}].components."minecraft:lore"[4].extra[0].text set string storage evercraft:companions leveling.level

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/dog