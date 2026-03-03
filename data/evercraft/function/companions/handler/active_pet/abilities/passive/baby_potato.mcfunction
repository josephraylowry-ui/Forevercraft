# Baby Potato Pet Passive Abilities
# - Tiny Spud: Scale shrink (become smaller)
# - Hearty Meal: Food heals 10% more (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Baby_Potato

# Tiny Spud - Scale shrink (0.975 to 0.85)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s scale base set 0.975
execute if score #value Pets.Calc matches 8..12 run return run attribute @s scale base set 0.968
execute if score #value Pets.Calc matches 13..17 run return run attribute @s scale base set 0.961
execute if score #value Pets.Calc matches 18..22 run return run attribute @s scale base set 0.954
execute if score #value Pets.Calc matches 23..27 run return run attribute @s scale base set 0.947
execute if score #value Pets.Calc matches 28..32 run return run attribute @s scale base set 0.94
execute if score #value Pets.Calc matches 33..37 run return run attribute @s scale base set 0.933
execute if score #value Pets.Calc matches 38..42 run return run attribute @s scale base set 0.926
execute if score #value Pets.Calc matches 43..47 run return run attribute @s scale base set 0.919
execute if score #value Pets.Calc matches 48..52 run return run attribute @s scale base set 0.912
execute if score #value Pets.Calc matches 53..57 run return run attribute @s scale base set 0.905
execute if score #value Pets.Calc matches 58..62 run return run attribute @s scale base set 0.898
execute if score #value Pets.Calc matches 63..67 run return run attribute @s scale base set 0.891
execute if score #value Pets.Calc matches 68..72 run return run attribute @s scale base set 0.884
execute if score #value Pets.Calc matches 73..77 run return run attribute @s scale base set 0.877
execute if score #value Pets.Calc matches 78..82 run return run attribute @s scale base set 0.87
execute if score #value Pets.Calc matches 83..87 run return run attribute @s scale base set 0.863
execute if score #value Pets.Calc matches 88..92 run return run attribute @s scale base set 0.856
execute if score #value Pets.Calc matches 93..97 run return run attribute @s scale base set 0.853
execute if score #value Pets.Calc matches 98..100 run return run attribute @s scale base set 0.85
