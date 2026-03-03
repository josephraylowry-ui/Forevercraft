# Sabertooth Pet Passive Abilities
# - Primal Sweep: Full sweeping damage
# - Predator's Pace: Movement speed scaling

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

attribute @s sweeping_damage_ratio base set 1

execute if score #value Pets.Calc matches 1..2 run return run attribute @s movement_speed base set 0.102
execute if score #value Pets.Calc matches 3..4 run return run attribute @s movement_speed base set 0.104
execute if score #value Pets.Calc matches 5..6 run return run attribute @s movement_speed base set 0.106
execute if score #value Pets.Calc matches 7..8 run return run attribute @s movement_speed base set 0.108
execute if score #value Pets.Calc matches 9..10 run return run attribute @s movement_speed base set 0.11
execute if score #value Pets.Calc matches 11..12 run return run attribute @s movement_speed base set 0.112
execute if score #value Pets.Calc matches 13..14 run return run attribute @s movement_speed base set 0.114
execute if score #value Pets.Calc matches 15..16 run return run attribute @s movement_speed base set 0.116
execute if score #value Pets.Calc matches 17..18 run return run attribute @s movement_speed base set 0.118
execute if score #value Pets.Calc matches 19..20 run return run attribute @s movement_speed base set 0.12
execute if score #value Pets.Calc matches 21..22 run return run attribute @s movement_speed base set 0.122
execute if score #value Pets.Calc matches 23..24 run return run attribute @s movement_speed base set 0.124
execute if score #value Pets.Calc matches 25..26 run return run attribute @s movement_speed base set 0.126
execute if score #value Pets.Calc matches 27..28 run return run attribute @s movement_speed base set 0.128
execute if score #value Pets.Calc matches 29..30 run return run attribute @s movement_speed base set 0.13
execute if score #value Pets.Calc matches 31..32 run return run attribute @s movement_speed base set 0.132
execute if score #value Pets.Calc matches 33..34 run return run attribute @s movement_speed base set 0.134
execute if score #value Pets.Calc matches 35..36 run return run attribute @s movement_speed base set 0.136
execute if score #value Pets.Calc matches 37..38 run return run attribute @s movement_speed base set 0.138
execute if score #value Pets.Calc matches 39..40 run return run attribute @s movement_speed base set 0.14
execute if score #value Pets.Calc matches 41..42 run return run attribute @s movement_speed base set 0.142
execute if score #value Pets.Calc matches 43..44 run return run attribute @s movement_speed base set 0.144
execute if score #value Pets.Calc matches 45..46 run return run attribute @s movement_speed base set 0.146
execute if score #value Pets.Calc matches 47..48 run return run attribute @s movement_speed base set 0.148
execute if score #value Pets.Calc matches 49..50 run return run attribute @s movement_speed base set 0.15
execute if score #value Pets.Calc matches 51..52 run return run attribute @s movement_speed base set 0.152
execute if score #value Pets.Calc matches 53..54 run return run attribute @s movement_speed base set 0.154
execute if score #value Pets.Calc matches 55..56 run return run attribute @s movement_speed base set 0.156
execute if score #value Pets.Calc matches 57..58 run return run attribute @s movement_speed base set 0.158
execute if score #value Pets.Calc matches 59..60 run return run attribute @s movement_speed base set 0.16
execute if score #value Pets.Calc matches 61..62 run return run attribute @s movement_speed base set 0.162
execute if score #value Pets.Calc matches 63..64 run return run attribute @s movement_speed base set 0.164
execute if score #value Pets.Calc matches 65..66 run return run attribute @s movement_speed base set 0.166
execute if score #value Pets.Calc matches 67..68 run return run attribute @s movement_speed base set 0.168
execute if score #value Pets.Calc matches 69..70 run return run attribute @s movement_speed base set 0.17
execute if score #value Pets.Calc matches 71..72 run return run attribute @s movement_speed base set 0.172
execute if score #value Pets.Calc matches 73..74 run return run attribute @s movement_speed base set 0.174
execute if score #value Pets.Calc matches 75..76 run return run attribute @s movement_speed base set 0.176
execute if score #value Pets.Calc matches 77..78 run return run attribute @s movement_speed base set 0.178
execute if score #value Pets.Calc matches 79..80 run return run attribute @s movement_speed base set 0.18
execute if score #value Pets.Calc matches 81..82 run return run attribute @s movement_speed base set 0.182
execute if score #value Pets.Calc matches 83..84 run return run attribute @s movement_speed base set 0.184
execute if score #value Pets.Calc matches 85..86 run return run attribute @s movement_speed base set 0.186
execute if score #value Pets.Calc matches 87..88 run return run attribute @s movement_speed base set 0.188
execute if score #value Pets.Calc matches 89..90 run return run attribute @s movement_speed base set 0.19
execute if score #value Pets.Calc matches 91..92 run return run attribute @s movement_speed base set 0.192
execute if score #value Pets.Calc matches 93..94 run return run attribute @s movement_speed base set 0.194
execute if score #value Pets.Calc matches 95..96 run return run attribute @s movement_speed base set 0.196
execute if score #value Pets.Calc matches 97..98 run return run attribute @s movement_speed base set 0.198
execute if score #value Pets.Calc matches 99..100 run return run attribute @s movement_speed base set 0.2