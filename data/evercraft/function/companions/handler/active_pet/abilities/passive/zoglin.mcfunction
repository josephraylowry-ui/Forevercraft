# Zoglin Pet Passive Abilities
# - Rampaging Charge: Attack knockback scaling
# - Undead Resilience: Immune to Nausea effect

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Zoglin

# Passive: Nausea immunity
effect clear @s nausea

# Attack knockback scaling
execute if score #value Pets.Calc matches 1..7 run return run attribute @s attack_knockback base set 0.05
execute if score #value Pets.Calc matches 8..12 run return run attribute @s attack_knockback base set 0.126
execute if score #value Pets.Calc matches 13..17 run return run attribute @s attack_knockback base set 0.203
execute if score #value Pets.Calc matches 18..22 run return run attribute @s attack_knockback base set 0.279
execute if score #value Pets.Calc matches 23..27 run return run attribute @s attack_knockback base set 0.355
execute if score #value Pets.Calc matches 28..32 run return run attribute @s attack_knockback base set 0.432
execute if score #value Pets.Calc matches 33..37 run return run attribute @s attack_knockback base set 0.508
execute if score #value Pets.Calc matches 38..42 run return run attribute @s attack_knockback base set 0.584
execute if score #value Pets.Calc matches 43..47 run return run attribute @s attack_knockback base set 0.661
execute if score #value Pets.Calc matches 48..52 run return run attribute @s attack_knockback base set 0.737
execute if score #value Pets.Calc matches 53..57 run return run attribute @s attack_knockback base set 0.813
execute if score #value Pets.Calc matches 58..62 run return run attribute @s attack_knockback base set 0.89
execute if score #value Pets.Calc matches 63..67 run return run attribute @s attack_knockback base set 0.966
execute if score #value Pets.Calc matches 68..72 run return run attribute @s attack_knockback base set 1.042
execute if score #value Pets.Calc matches 73..77 run return run attribute @s attack_knockback base set 1.118
execute if score #value Pets.Calc matches 78..82 run return run attribute @s attack_knockback base set 1.195
execute if score #value Pets.Calc matches 83..87 run return run attribute @s attack_knockback base set 1.271
execute if score #value Pets.Calc matches 88..92 run return run attribute @s attack_knockback base set 1.347
execute if score #value Pets.Calc matches 93..97 run return run attribute @s attack_knockback base set 1.424
execute if score #value Pets.Calc matches 98..100 run return run attribute @s attack_knockback base set 1.5
