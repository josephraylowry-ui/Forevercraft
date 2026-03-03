# Time Weaver Pet Passive Abilities
# - Temporal Acceleration: Attack speed boost
# - Haste Aura: Permanent Haste effect (level scales)
# - Temporal Stasis: Slowness on nearby hostile mobs

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Time_Weaver

# Haste Aura - Permanent Haste (level scales 1-3)
execute if score #value Pets.Calc matches 1..32 run effect give @s haste infinite 0 true
execute if score #value Pets.Calc matches 33..66 run effect give @s haste infinite 1 true
execute if score #value Pets.Calc matches 67..100 run effect give @s haste infinite 2 true

# Temporal Stasis - Slowness on nearby hostile mobs (level scales)
execute if score #value Pets.Calc matches 1..25 run effect give @e[distance=..8, type=#evercraft:companions/hostile, sort=nearest, limit=3] slowness 3 0 true
execute if score #value Pets.Calc matches 26..50 run effect give @e[distance=..10, type=#evercraft:companions/hostile, sort=nearest, limit=4] slowness 3 0 true
execute if score #value Pets.Calc matches 51..75 run effect give @e[distance=..12, type=#evercraft:companions/hostile, sort=nearest, limit=5] slowness 3 1 true
execute if score #value Pets.Calc matches 76..100 run effect give @e[distance=..14, type=#evercraft:companions/hostile, sort=nearest, limit=6] slowness 3 1 true

# Temporal Acceleration - Attack speed scaling (4.2 to 8.0)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s attack_speed base set 4.2
execute if score #value Pets.Calc matches 8..12 run return run attribute @s attack_speed base set 4.4
execute if score #value Pets.Calc matches 13..17 run return run attribute @s attack_speed base set 4.6
execute if score #value Pets.Calc matches 18..22 run return run attribute @s attack_speed base set 4.8
execute if score #value Pets.Calc matches 23..27 run return run attribute @s attack_speed base set 5.0
execute if score #value Pets.Calc matches 28..32 run return run attribute @s attack_speed base set 5.2
execute if score #value Pets.Calc matches 33..37 run return run attribute @s attack_speed base set 5.4
execute if score #value Pets.Calc matches 38..42 run return run attribute @s attack_speed base set 5.6
execute if score #value Pets.Calc matches 43..47 run return run attribute @s attack_speed base set 5.8
execute if score #value Pets.Calc matches 48..52 run return run attribute @s attack_speed base set 6.0
execute if score #value Pets.Calc matches 53..57 run return run attribute @s attack_speed base set 6.2
execute if score #value Pets.Calc matches 58..62 run return run attribute @s attack_speed base set 6.4
execute if score #value Pets.Calc matches 63..67 run return run attribute @s attack_speed base set 6.6
execute if score #value Pets.Calc matches 68..72 run return run attribute @s attack_speed base set 6.8
execute if score #value Pets.Calc matches 73..77 run return run attribute @s attack_speed base set 7.0
execute if score #value Pets.Calc matches 78..82 run return run attribute @s attack_speed base set 7.2
execute if score #value Pets.Calc matches 83..87 run return run attribute @s attack_speed base set 7.4
execute if score #value Pets.Calc matches 88..92 run return run attribute @s attack_speed base set 7.6
execute if score #value Pets.Calc matches 93..97 run return run attribute @s attack_speed base set 7.8
execute if score #value Pets.Calc matches 98..100 run return run attribute @s attack_speed base set 8.0
