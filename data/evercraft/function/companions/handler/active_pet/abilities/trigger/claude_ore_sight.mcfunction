# Claude Pet - Ore Sight Trigger
# Called every 10s for players with active Claude pet
# Scans for ores and spawns glowing armor stands to highlight them

# Get the pet's level from the item_display
data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Kill existing ore markers before spawning new ones (cleanup old scan)
kill @e[type=armor_stand, tag=Pets.OreMarker, distance=..50]

# Ore Sight - Scan for ores (range scales with level: 8 at lvl 1 → 28 at lvl 100)
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

# Achievement tracking (only if level was valid and scan ran)
execute if score #value Pets.Calc matches 1.. run scoreboard players add @s ach.pet_abilities 1
