# Claude Pet Passive Abilities
# - Ore Sight: Spawns glowing armor stands at nearby ore veins (UNIQUE mechanic)
# - Thoughtful Guidance: Night Vision (permanent)
# - Persistent Helper: Attack damage scaling (1.05 to 2.0)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Claude

# Thoughtful Guidance - Night Vision (permanent)
effect give @s night_vision infinite 1 true

# Kill existing ore markers before spawning new ones
kill @e[type=armor_stand, tag=Pets.OreMarker, distance=..50]

# Ore Sight - Scan for ores and spawn glowing armor stands (range scales with level)
# Range: 8 blocks at level 1 → 28 blocks at level 100
execute if score #value Pets.Calc matches 1..7 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:8}
execute if score #value Pets.Calc matches 8..12 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:9}
execute if score #value Pets.Calc matches 13..17 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:10}
execute if score #value Pets.Calc matches 18..22 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:11}
execute if score #value Pets.Calc matches 23..27 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:12}
execute if score #value Pets.Calc matches 28..32 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:13}
execute if score #value Pets.Calc matches 33..37 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:14}
execute if score #value Pets.Calc matches 38..42 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:15}
execute if score #value Pets.Calc matches 43..47 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:16}
execute if score #value Pets.Calc matches 48..52 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:17}
execute if score #value Pets.Calc matches 53..57 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:18}
execute if score #value Pets.Calc matches 58..62 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:19}
execute if score #value Pets.Calc matches 63..67 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:20}
execute if score #value Pets.Calc matches 68..72 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:21}
execute if score #value Pets.Calc matches 73..77 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:22}
execute if score #value Pets.Calc matches 78..82 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:24}
execute if score #value Pets.Calc matches 83..87 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:25}
execute if score #value Pets.Calc matches 88..92 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:26}
execute if score #value Pets.Calc matches 93..97 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:27}
execute if score #value Pets.Calc matches 98..100 run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_scan {range:28}

# Persistent Helper - Attack damage boost (scales 1.05 to 2.0)
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
