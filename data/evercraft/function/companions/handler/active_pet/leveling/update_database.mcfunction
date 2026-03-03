$data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"$(name)"}]}}}].components."minecraft:profile".properties[2].value set string storage evercraft:companions leveling.level

$data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"$(name)"}]}}}].components."minecraft:profile".properties[3].value set string storage evercraft:companions leveling.current_exp

$data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"$(name)"}]}}}].components."minecraft:profile".properties[3].signature set string storage evercraft:companions leveling.exp_to_next_level

$data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"$(name)"}]}}}].components."minecraft:custom_name".text set value "[Lvl $(level)] $(name)"