# Panther Pet Passive Abilities
# - Shadow Prowl: Dodge chance scaling (via adv.evasion scoreboard)
# - Predator's Instinct: Strength I, Jump Boost I, Speed I
# - Night Stalker: Luck (dream rate) scaling

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Panther

# Shadow Prowl - Evasion scaling (10 -> 25, 1% per point = dodge chance)
# Store evasion amount in Pets.Temp for cleanup in reset_perks
execute if score #value Pets.Calc matches 1..7 run scoreboard players set @s Pets.Temp 10
execute if score #value Pets.Calc matches 8..12 run scoreboard players set @s Pets.Temp 11
execute if score #value Pets.Calc matches 13..17 run scoreboard players set @s Pets.Temp 12
execute if score #value Pets.Calc matches 18..22 run scoreboard players set @s Pets.Temp 13
execute if score #value Pets.Calc matches 23..27 run scoreboard players set @s Pets.Temp 14
execute if score #value Pets.Calc matches 28..32 run scoreboard players set @s Pets.Temp 15
execute if score #value Pets.Calc matches 33..37 run scoreboard players set @s Pets.Temp 16
execute if score #value Pets.Calc matches 38..42 run scoreboard players set @s Pets.Temp 17
execute if score #value Pets.Calc matches 43..47 run scoreboard players set @s Pets.Temp 18
execute if score #value Pets.Calc matches 48..52 run scoreboard players set @s Pets.Temp 19
execute if score #value Pets.Calc matches 53..57 run scoreboard players set @s Pets.Temp 20
execute if score #value Pets.Calc matches 58..62 run scoreboard players set @s Pets.Temp 21
execute if score #value Pets.Calc matches 63..67 run scoreboard players set @s Pets.Temp 22
execute if score #value Pets.Calc matches 68..72 run scoreboard players set @s Pets.Temp 23
execute if score #value Pets.Calc matches 73..77 run scoreboard players set @s Pets.Temp 23
execute if score #value Pets.Calc matches 78..82 run scoreboard players set @s Pets.Temp 24
execute if score #value Pets.Calc matches 83..87 run scoreboard players set @s Pets.Temp 24
execute if score #value Pets.Calc matches 88..92 run scoreboard players set @s Pets.Temp 25
execute if score #value Pets.Calc matches 93..97 run scoreboard players set @s Pets.Temp 25
execute if score #value Pets.Calc matches 98..100 run scoreboard players set @s Pets.Temp 25
scoreboard players operation @s adv.evasion += @s Pets.Temp

# Predator's Instinct - Permanent buffs
effect give @s strength infinite 0 true
effect give @s jump_boost infinite 0 true
effect give @s speed infinite 0 true

# Night Stalker - Luck scaling (1.0 -> 5.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s luck base set 1.0
execute if score #value Pets.Calc matches 8..12 run attribute @s luck base set 1.211
execute if score #value Pets.Calc matches 13..17 run attribute @s luck base set 1.421
execute if score #value Pets.Calc matches 18..22 run attribute @s luck base set 1.632
execute if score #value Pets.Calc matches 23..27 run attribute @s luck base set 1.842
execute if score #value Pets.Calc matches 28..32 run attribute @s luck base set 2.053
execute if score #value Pets.Calc matches 33..37 run attribute @s luck base set 2.263
execute if score #value Pets.Calc matches 38..42 run attribute @s luck base set 2.474
execute if score #value Pets.Calc matches 43..47 run attribute @s luck base set 2.684
execute if score #value Pets.Calc matches 48..52 run attribute @s luck base set 2.895
execute if score #value Pets.Calc matches 53..57 run attribute @s luck base set 3.105
execute if score #value Pets.Calc matches 58..62 run attribute @s luck base set 3.316
execute if score #value Pets.Calc matches 63..67 run attribute @s luck base set 3.526
execute if score #value Pets.Calc matches 68..72 run attribute @s luck base set 3.737
execute if score #value Pets.Calc matches 73..77 run attribute @s luck base set 3.947
execute if score #value Pets.Calc matches 78..82 run attribute @s luck base set 4.158
execute if score #value Pets.Calc matches 83..87 run attribute @s luck base set 4.368
execute if score #value Pets.Calc matches 88..92 run attribute @s luck base set 4.579
execute if score #value Pets.Calc matches 93..97 run attribute @s luck base set 4.789
execute if score #value Pets.Calc matches 98..100 run attribute @s luck base set 5.0
