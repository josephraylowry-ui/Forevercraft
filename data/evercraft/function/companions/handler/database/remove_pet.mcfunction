$data remove entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"$(name)"}]}}}]

scoreboard players remove @s Pets.Count 1