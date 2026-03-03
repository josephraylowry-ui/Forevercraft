# Sentinel Pet Passive Abilities
# - Watchful Eye: Entity interaction range
# - Danger Sense: Hostile mob detection (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Red_Parrot

# Entity interaction range scaling based on level (3.1 -> 4.5)
execute if score #value Pets.Calc matches 1..7 run attribute @s entity_interaction_range base set 3.1
execute if score #value Pets.Calc matches 8..12 run attribute @s entity_interaction_range base set 3.174
execute if score #value Pets.Calc matches 13..17 run attribute @s entity_interaction_range base set 3.247
execute if score #value Pets.Calc matches 18..22 run attribute @s entity_interaction_range base set 3.321
execute if score #value Pets.Calc matches 23..27 run attribute @s entity_interaction_range base set 3.395
execute if score #value Pets.Calc matches 28..32 run attribute @s entity_interaction_range base set 3.468
execute if score #value Pets.Calc matches 33..37 run attribute @s entity_interaction_range base set 3.542
execute if score #value Pets.Calc matches 38..42 run attribute @s entity_interaction_range base set 3.616
execute if score #value Pets.Calc matches 43..47 run attribute @s entity_interaction_range base set 3.689
execute if score #value Pets.Calc matches 48..52 run attribute @s entity_interaction_range base set 3.763
execute if score #value Pets.Calc matches 53..57 run attribute @s entity_interaction_range base set 3.837
execute if score #value Pets.Calc matches 58..62 run attribute @s entity_interaction_range base set 3.911
execute if score #value Pets.Calc matches 63..67 run attribute @s entity_interaction_range base set 3.984
execute if score #value Pets.Calc matches 68..72 run attribute @s entity_interaction_range base set 4.058
execute if score #value Pets.Calc matches 73..77 run attribute @s entity_interaction_range base set 4.132
execute if score #value Pets.Calc matches 78..82 run attribute @s entity_interaction_range base set 4.205
execute if score #value Pets.Calc matches 83..87 run attribute @s entity_interaction_range base set 4.279
execute if score #value Pets.Calc matches 88..92 run attribute @s entity_interaction_range base set 4.353
execute if score #value Pets.Calc matches 93..97 run attribute @s entity_interaction_range base set 4.426
execute if score #value Pets.Calc matches 98..100 run attribute @s entity_interaction_range base set 4.5
