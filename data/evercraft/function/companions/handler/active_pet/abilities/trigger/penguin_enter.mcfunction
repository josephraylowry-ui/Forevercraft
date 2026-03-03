advancement revoke @s only evercraft:companions/abilities/penguin_exit

scoreboard players operation #Search Pets.ID = @s Pets.ID

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 run return run attribute @s movement_speed base set 0.10375
execute if score #value Pets.Calc matches 8..12 run return run attribute @s movement_speed base set 0.1075
execute if score #value Pets.Calc matches 13..17 run return run attribute @s movement_speed base set 0.11125
execute if score #value Pets.Calc matches 18..22 run return run attribute @s movement_speed base set 0.115
execute if score #value Pets.Calc matches 23..27 run return run attribute @s movement_speed base set 0.119
execute if score #value Pets.Calc matches 28..32 run return run attribute @s movement_speed base set 0.12275
execute if score #value Pets.Calc matches 33..37 run return run attribute @s movement_speed base set 0.1265
execute if score #value Pets.Calc matches 38..42 run return run attribute @s movement_speed base set 0.13025
execute if score #value Pets.Calc matches 43..47 run return run attribute @s movement_speed base set 0.134
execute if score #value Pets.Calc matches 48..52 run return run attribute @s movement_speed base set 0.138
execute if score #value Pets.Calc matches 53..57 run return run attribute @s movement_speed base set 0.14175
execute if score #value Pets.Calc matches 58..62 run return run attribute @s movement_speed base set 0.1455
execute if score #value Pets.Calc matches 63..67 run return run attribute @s movement_speed base set 0.14925
execute if score #value Pets.Calc matches 68..72 run return run attribute @s movement_speed base set 0.153
execute if score #value Pets.Calc matches 73..77 run return run attribute @s movement_speed base set 0.157
execute if score #value Pets.Calc matches 78..82 run return run attribute @s movement_speed base set 0.16075
execute if score #value Pets.Calc matches 83..87 run return run attribute @s movement_speed base set 0.1645
execute if score #value Pets.Calc matches 88..92 run return run attribute @s movement_speed base set 0.16825
execute if score #value Pets.Calc matches 93..97 run return run attribute @s movement_speed base set 0.172
execute if score #value Pets.Calc matches 98..100 run return run attribute @s movement_speed base set 0.175
# Achievement tracking
scoreboard players add @s ach.pet_abilities 1
