# Deloris Pet Passive Abilities
# - Lucky Llama: Luck scaling
# - Spit Attack: Spit projectile at hostiles every 60s (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Lucky Llama - Luck (0.25 to 3.5)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s luck base set 0.25
execute if score #value Pets.Calc matches 8..12 run return run attribute @s luck base set 0.421
execute if score #value Pets.Calc matches 13..17 run return run attribute @s luck base set 0.592
execute if score #value Pets.Calc matches 18..22 run return run attribute @s luck base set 0.763
execute if score #value Pets.Calc matches 23..27 run return run attribute @s luck base set 0.934
execute if score #value Pets.Calc matches 28..32 run return run attribute @s luck base set 1.105
execute if score #value Pets.Calc matches 33..37 run return run attribute @s luck base set 1.276
execute if score #value Pets.Calc matches 38..42 run return run attribute @s luck base set 1.447
execute if score #value Pets.Calc matches 43..47 run return run attribute @s luck base set 1.618
execute if score #value Pets.Calc matches 48..52 run return run attribute @s luck base set 1.789
execute if score #value Pets.Calc matches 53..57 run return run attribute @s luck base set 1.961
execute if score #value Pets.Calc matches 58..62 run return run attribute @s luck base set 2.132
execute if score #value Pets.Calc matches 63..67 run return run attribute @s luck base set 2.303
execute if score #value Pets.Calc matches 68..72 run return run attribute @s luck base set 2.474
execute if score #value Pets.Calc matches 73..77 run return run attribute @s luck base set 2.645
execute if score #value Pets.Calc matches 78..82 run return run attribute @s luck base set 2.816
execute if score #value Pets.Calc matches 83..87 run return run attribute @s luck base set 2.987
execute if score #value Pets.Calc matches 88..92 run return run attribute @s luck base set 3.158
execute if score #value Pets.Calc matches 93..97 run return run attribute @s luck base set 3.329
execute if score #value Pets.Calc matches 98..100 run return run attribute @s luck base set 3.5
