# Blaze Pet Passive Abilities
# - Infernal Shield: Fire resistance (permanent)
# - Blaze Strike: Attack damage scaling (melee ignites, tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Blaze

# Passive: Fire resistance
effect give @s fire_resistance infinite 0 true

# Attack damage scaling
execute if score #value Pets.Calc matches 1..7 run return run attribute @s attack_damage base set 1.05
execute if score #value Pets.Calc matches 8..12 run return run attribute @s attack_damage base set 1.1
execute if score #value Pets.Calc matches 13..17 run return run attribute @s attack_damage base set 1.15
execute if score #value Pets.Calc matches 18..22 run return run attribute @s attack_damage base set 1.2
execute if score #value Pets.Calc matches 23..27 run return run attribute @s attack_damage base set 1.25
execute if score #value Pets.Calc matches 28..32 run return run attribute @s attack_damage base set 1.3
execute if score #value Pets.Calc matches 33..37 run return run attribute @s attack_damage base set 1.35
execute if score #value Pets.Calc matches 38..42 run return run attribute @s attack_damage base set 1.4
execute if score #value Pets.Calc matches 43..47 run return run attribute @s attack_damage base set 1.45
execute if score #value Pets.Calc matches 48..52 run return run attribute @s attack_damage base set 1.5
execute if score #value Pets.Calc matches 53..57 run return run attribute @s attack_damage base set 1.55
execute if score #value Pets.Calc matches 58..62 run return run attribute @s attack_damage base set 1.6
execute if score #value Pets.Calc matches 63..67 run return run attribute @s attack_damage base set 1.65
execute if score #value Pets.Calc matches 68..72 run return run attribute @s attack_damage base set 1.7
execute if score #value Pets.Calc matches 73..77 run return run attribute @s attack_damage base set 1.75
execute if score #value Pets.Calc matches 78..82 run return run attribute @s attack_damage base set 1.8
execute if score #value Pets.Calc matches 83..87 run return run attribute @s attack_damage base set 1.85
execute if score #value Pets.Calc matches 88..92 run return run attribute @s attack_damage base set 1.9
execute if score #value Pets.Calc matches 93..97 run return run attribute @s attack_damage base set 1.95
execute if score #value Pets.Calc matches 98..100 run return run attribute @s attack_damage base set 2.0
