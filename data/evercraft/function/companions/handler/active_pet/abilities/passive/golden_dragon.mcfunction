# Golden Dragon Pet Passive Abilities
# - Fortune's Blessing: +7 Luck permanently
# - Draconic Might: Attack damage scaling (5% to 100%)
# - Golden Aegis: Resistance + Fire Resistance
# - Treasure Hunter: Mob crate drop chance increase (tag for advancement detection)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Golden_Dragon

# Fortune's Blessing - +7 Luck (flat, always active)
attribute @s luck base set 7

# Golden Aegis - Resistance + Fire Resistance (permanent)
effect give @s resistance infinite 0 true
effect give @s fire_resistance infinite 0 true

# Draconic Might - Attack damage scaling (1.05 to 2.0 = 5% to 100%)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s attack_damage base set 1.05
execute if score #value Pets.Calc matches 8..12 run return run attribute @s attack_damage base set 1.1
execute if score #value Pets.Calc matches 13..17 run return run attribute @s attack_damage base set 1.15
execute if score #value Pets.Calc matches 18..22 run return run attribute @s attack_damage base set 1.2
execute if score #value Pets.Calc matches 23..27 run return run attribute @s attack_damage base set 1.25
execute if score #value Pets.Calc matches 28..32 run return run attribute @s attack_damage base set 1.35
execute if score #value Pets.Calc matches 33..37 run return run attribute @s attack_damage base set 1.45
execute if score #value Pets.Calc matches 38..42 run return run attribute @s attack_damage base set 1.5
execute if score #value Pets.Calc matches 43..47 run return run attribute @s attack_damage base set 1.55
execute if score #value Pets.Calc matches 48..52 run return run attribute @s attack_damage base set 1.6
execute if score #value Pets.Calc matches 53..57 run return run attribute @s attack_damage base set 1.65
execute if score #value Pets.Calc matches 58..62 run return run attribute @s attack_damage base set 1.7
execute if score #value Pets.Calc matches 63..67 run return run attribute @s attack_damage base set 1.75
execute if score #value Pets.Calc matches 68..72 run return run attribute @s attack_damage base set 1.8
execute if score #value Pets.Calc matches 73..77 run return run attribute @s attack_damage base set 1.85
execute if score #value Pets.Calc matches 78..82 run return run attribute @s attack_damage base set 1.9
execute if score #value Pets.Calc matches 83..87 run return run attribute @s attack_damage base set 1.95
execute if score #value Pets.Calc matches 88..92 run return run attribute @s attack_damage base set 1.975
execute if score #value Pets.Calc matches 93..97 run return run attribute @s attack_damage base set 1.99
execute if score #value Pets.Calc matches 98..100 run return run attribute @s attack_damage base set 2.0
