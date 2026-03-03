scoreboard players operation #oxygen_bonus Pets.Calc = #current_level Pets.EXP
scoreboard players operation #oxygen_bonus Pets.Calc *= #oxygen_bonus Pets.Calc
scoreboard players operation #oxygen_bonus Pets.Calc *= #5 Pets.Calc

scoreboard players operation #percentage_increase Pets.Calc = #oxygen_bonus Pets.Calc

scoreboard players operation #oxygen_bonus Pets.Calc = #current_level Pets.EXP
scoreboard players operation #oxygen_bonus Pets.Calc *= #400 Pets.Calc

scoreboard players operation #percentage_increase Pets.Calc += #oxygen_bonus Pets.Calc
execute store result storage evercraft:companions math.percentage_increase float 0.01 run scoreboard players get #percentage_increase Pets.Calc

data modify entity @s item.components."minecraft:lore"[4].extra[0].text set string storage evercraft:companions math.percentage_increase 0 -1
data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"Tidecaller"}]}}}].components."minecraft:lore"[5].extra[0].text set string storage evercraft:companions math.percentage_increase 0 -1

execute as @a[tag=Pets.Owner, limit=1] at @s run function evercraft:companions/handler/active_pet/abilities/passive/axolotl