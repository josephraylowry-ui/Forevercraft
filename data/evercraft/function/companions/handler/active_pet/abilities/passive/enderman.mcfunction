# Enderman Pet Passive Abilities
# - Ender Reach: Entity interaction range scaling
# - Ender Pact: Endermen don't aggro on eye contact (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Enderman

# Ender Reach: Entity interaction range scaling
execute if score #value Pets.Calc matches 1..7 run return run attribute @s entity_interaction_range base set 3.1
execute if score #value Pets.Calc matches 8..12 run return run attribute @s entity_interaction_range base set 3.226
execute if score #value Pets.Calc matches 13..17 run return run attribute @s entity_interaction_range base set 3.353
execute if score #value Pets.Calc matches 18..22 run return run attribute @s entity_interaction_range base set 3.479
execute if score #value Pets.Calc matches 23..27 run return run attribute @s entity_interaction_range base set 3.605
execute if score #value Pets.Calc matches 28..32 run return run attribute @s entity_interaction_range base set 3.732
execute if score #value Pets.Calc matches 33..37 run return run attribute @s entity_interaction_range base set 3.858
execute if score #value Pets.Calc matches 38..42 run return run attribute @s entity_interaction_range base set 3.984
execute if score #value Pets.Calc matches 43..47 run return run attribute @s entity_interaction_range base set 4.111
execute if score #value Pets.Calc matches 48..52 run return run attribute @s entity_interaction_range base set 4.237
execute if score #value Pets.Calc matches 53..57 run return run attribute @s entity_interaction_range base set 4.363
execute if score #value Pets.Calc matches 58..62 run return run attribute @s entity_interaction_range base set 4.49
execute if score #value Pets.Calc matches 63..67 run return run attribute @s entity_interaction_range base set 4.616
execute if score #value Pets.Calc matches 68..72 run return run attribute @s entity_interaction_range base set 4.742
execute if score #value Pets.Calc matches 73..77 run return run attribute @s entity_interaction_range base set 4.868
execute if score #value Pets.Calc matches 78..82 run return run attribute @s entity_interaction_range base set 4.995
execute if score #value Pets.Calc matches 83..87 run return run attribute @s entity_interaction_range base set 5.121
execute if score #value Pets.Calc matches 88..92 run return run attribute @s entity_interaction_range base set 5.247
execute if score #value Pets.Calc matches 93..97 run return run attribute @s entity_interaction_range base set 5.374
execute if score #value Pets.Calc matches 98..100 run return run attribute @s entity_interaction_range base set 5.5
