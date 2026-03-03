# Butterfly Pet Passive Abilities
# - Butterfly Effect: Random potion on hit
# - Chaos Wings: 5% chance one-shot/launch
# - Dream Weaver: Luck scaling

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Butterfly

# Dream Weaver - Luck scaling (1.0 -> 9.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s luck base set 1.0
execute if score #value Pets.Calc matches 8..12 run attribute @s luck base set 1.421
execute if score #value Pets.Calc matches 13..17 run attribute @s luck base set 1.842
execute if score #value Pets.Calc matches 18..22 run attribute @s luck base set 2.263
execute if score #value Pets.Calc matches 23..27 run attribute @s luck base set 2.684
execute if score #value Pets.Calc matches 28..32 run attribute @s luck base set 3.105
execute if score #value Pets.Calc matches 33..37 run attribute @s luck base set 3.526
execute if score #value Pets.Calc matches 38..42 run attribute @s luck base set 3.947
execute if score #value Pets.Calc matches 43..47 run attribute @s luck base set 4.368
execute if score #value Pets.Calc matches 48..52 run attribute @s luck base set 4.789
execute if score #value Pets.Calc matches 53..57 run attribute @s luck base set 5.211
execute if score #value Pets.Calc matches 58..62 run attribute @s luck base set 5.632
execute if score #value Pets.Calc matches 63..67 run attribute @s luck base set 6.053
execute if score #value Pets.Calc matches 68..72 run attribute @s luck base set 6.474
execute if score #value Pets.Calc matches 73..77 run attribute @s luck base set 6.895
execute if score #value Pets.Calc matches 78..82 run attribute @s luck base set 7.316
execute if score #value Pets.Calc matches 83..87 run attribute @s luck base set 7.737
execute if score #value Pets.Calc matches 88..92 run attribute @s luck base set 8.158
execute if score #value Pets.Calc matches 93..97 run attribute @s luck base set 8.579
execute if score #value Pets.Calc matches 98..100 run attribute @s luck base set 9.0
