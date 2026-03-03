data modify storage evercraft:companions math.string set string entity @s item.components."minecraft:profile".properties[2].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #current_level Pets.EXP = #value Pets.Calc

execute if score #current_level Pets.EXP matches 100.. run return fail

data modify storage evercraft:companions math.string set string entity @s item.components."minecraft:profile".properties[3].signature
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #exp_to_next_level Pets.EXP = #value Pets.Calc

data modify storage evercraft:companions math.string set string entity @s item.components."minecraft:profile".properties[3].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #current_exp Pets.EXP = #value Pets.Calc

data modify storage evercraft:companions leveling.name set from entity @s item.components."minecraft:profile".properties[1].value

scoreboard players operation #current_exp Pets.EXP += #exp_to_gain Pets.EXP
execute if score #current_exp Pets.EXP >= #exp_to_next_level Pets.EXP run function evercraft:companions/handler/active_pet/leveling/level_up

execute store result storage evercraft:companions leveling.current_exp int 1 run scoreboard players get #current_exp Pets.EXP
execute store result storage evercraft:companions leveling.exp_to_next_level int 1 run scoreboard players get #exp_to_next_level Pets.EXP

data modify entity @s item.components."minecraft:profile".properties[3].value set string storage evercraft:companions leveling.current_exp
data modify entity @s item.components."minecraft:profile".properties[3].signature set string storage evercraft:companions leveling.exp_to_next_level

function evercraft:companions/handler/active_pet/leveling/update_database with storage evercraft:companions leveling