execute store result storage evercraft:companions math.sound_mimmicing int 0.1 run scoreboard players get #current_level Pets.EXP
execute store result score #sound_mimmicing Pets.Calc run data get storage evercraft:companions math.sound_mimmicing 2
scoreboard players add #sound_mimmicing Pets.Calc 10
execute store result storage evercraft:companions math.sound_mimmicing int 1 run scoreboard players get #sound_mimmicing Pets.Calc

data modify entity @s item.components."minecraft:lore"[7].extra[0].text set string storage evercraft:companions math.sound_mimmicing
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Sentinel"}]}}}].components."minecraft:lore"[7].extra[0].text set string storage evercraft:companions math.sound_mimmicing

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/red_parrot