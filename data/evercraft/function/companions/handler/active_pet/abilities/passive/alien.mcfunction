# Alien Pet Passive Abilities
# - Otherworldly Reach: Entity + block interaction range dual scaling
# - Low Gravity: Reduced gravity with slow falling + jump boost (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

effect give @s slow_falling infinite 0 true

execute if score #value Pets.Calc matches 1..7 run attribute @s entity_interaction_range base set 3.1
execute if score #value Pets.Calc matches 1..7 run attribute @s block_interaction_range base set 4.6
execute if score #value Pets.Calc matches 8..12 run attribute @s entity_interaction_range base set 3.253
execute if score #value Pets.Calc matches 8..12 run attribute @s block_interaction_range base set 4.753
execute if score #value Pets.Calc matches 13..17 run attribute @s entity_interaction_range base set 3.405
execute if score #value Pets.Calc matches 13..17 run attribute @s block_interaction_range base set 4.905
execute if score #value Pets.Calc matches 18..22 run attribute @s entity_interaction_range base set 3.558
execute if score #value Pets.Calc matches 18..22 run attribute @s block_interaction_range base set 5.058
execute if score #value Pets.Calc matches 23..27 run attribute @s entity_interaction_range base set 3.711
execute if score #value Pets.Calc matches 23..27 run attribute @s block_interaction_range base set 5.211
execute if score #value Pets.Calc matches 28..32 run attribute @s entity_interaction_range base set 3.863
execute if score #value Pets.Calc matches 28..32 run attribute @s block_interaction_range base set 5.363
execute if score #value Pets.Calc matches 33..37 run attribute @s entity_interaction_range base set 4.016
execute if score #value Pets.Calc matches 33..37 run attribute @s block_interaction_range base set 5.516
execute if score #value Pets.Calc matches 38..42 run attribute @s entity_interaction_range base set 4.168
execute if score #value Pets.Calc matches 38..42 run attribute @s block_interaction_range base set 5.668
execute if score #value Pets.Calc matches 43..47 run attribute @s entity_interaction_range base set 4.321
execute if score #value Pets.Calc matches 43..47 run attribute @s block_interaction_range base set 5.821
execute if score #value Pets.Calc matches 48..52 run attribute @s entity_interaction_range base set 4.474
execute if score #value Pets.Calc matches 48..52 run attribute @s block_interaction_range base set 5.974
execute if score #value Pets.Calc matches 53..57 run attribute @s entity_interaction_range base set 4.626
execute if score #value Pets.Calc matches 53..57 run attribute @s block_interaction_range base set 6.126
execute if score #value Pets.Calc matches 58..62 run attribute @s entity_interaction_range base set 4.779
execute if score #value Pets.Calc matches 58..62 run attribute @s block_interaction_range base set 6.279
execute if score #value Pets.Calc matches 63..67 run attribute @s entity_interaction_range base set 4.932
execute if score #value Pets.Calc matches 63..67 run attribute @s block_interaction_range base set 6.432
execute if score #value Pets.Calc matches 68..72 run attribute @s entity_interaction_range base set 5.084
execute if score #value Pets.Calc matches 68..72 run attribute @s block_interaction_range base set 6.584
execute if score #value Pets.Calc matches 73..77 run attribute @s entity_interaction_range base set 5.237
execute if score #value Pets.Calc matches 73..77 run attribute @s block_interaction_range base set 6.737
execute if score #value Pets.Calc matches 78..82 run attribute @s entity_interaction_range base set 5.389
execute if score #value Pets.Calc matches 78..82 run attribute @s block_interaction_range base set 6.889
execute if score #value Pets.Calc matches 83..87 run attribute @s entity_interaction_range base set 5.542
execute if score #value Pets.Calc matches 83..87 run attribute @s block_interaction_range base set 7.042
execute if score #value Pets.Calc matches 88..92 run attribute @s entity_interaction_range base set 5.695
execute if score #value Pets.Calc matches 88..92 run attribute @s block_interaction_range base set 7.195
execute if score #value Pets.Calc matches 93..97 run attribute @s entity_interaction_range base set 5.847
execute if score #value Pets.Calc matches 93..97 run attribute @s block_interaction_range base set 7.347
execute if score #value Pets.Calc matches 98..100 run attribute @s entity_interaction_range base set 6.0
execute if score #value Pets.Calc matches 98..100 run attribute @s block_interaction_range base set 7.5

tag @s add Pets.Alien
