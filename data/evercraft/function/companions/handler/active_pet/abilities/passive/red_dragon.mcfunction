# Ashborn Pet Passive Abilities
# - Infernal Fury: Attack damage in The Nether
# - Brimstone Barrier: Absorption shield (schedule trigger)

function evercraft:companions/handler/active_pet/abilities/trigger/red_dragon

tag @s add Pets.Red_Dragon

execute unless dimension the_nether run return fail
scoreboard players operation #Search Pets.ID = @s Pets.ID

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 run return run attribute @s attack_damage base set 2.3
execute if score #value Pets.Calc matches 8..12 run return run attribute @s attack_damage base set 2.6
execute if score #value Pets.Calc matches 13..17 run return run attribute @s attack_damage base set 2.9
execute if score #value Pets.Calc matches 18..22 run return run attribute @s attack_damage base set 3.2
execute if score #value Pets.Calc matches 23..27 run return run attribute @s attack_damage base set 3.5
execute if score #value Pets.Calc matches 28..32 run return run attribute @s attack_damage base set 3.8
execute if score #value Pets.Calc matches 33..37 run return run attribute @s attack_damage base set 4.1
execute if score #value Pets.Calc matches 38..42 run return run attribute @s attack_damage base set 4.4
execute if score #value Pets.Calc matches 43..47 run return run attribute @s attack_damage base set 4.7
execute if score #value Pets.Calc matches 48..52 run return run attribute @s attack_damage base set 5.0
execute if score #value Pets.Calc matches 53..57 run return run attribute @s attack_damage base set 5.3
execute if score #value Pets.Calc matches 58..62 run return run attribute @s attack_damage base set 5.6
execute if score #value Pets.Calc matches 63..67 run return run attribute @s attack_damage base set 5.9
execute if score #value Pets.Calc matches 68..72 run return run attribute @s attack_damage base set 6.2
execute if score #value Pets.Calc matches 73..77 run return run attribute @s attack_damage base set 6.5
execute if score #value Pets.Calc matches 78..82 run return run attribute @s attack_damage base set 6.8
execute if score #value Pets.Calc matches 83..87 run return run attribute @s attack_damage base set 7.1
execute if score #value Pets.Calc matches 88..92 run return run attribute @s attack_damage base set 7.4
execute if score #value Pets.Calc matches 93..97 run return run attribute @s attack_damage base set 7.7
execute if score #value Pets.Calc matches 98..100 run return run attribute @s attack_damage base set 8.0