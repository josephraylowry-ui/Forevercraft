# Leviathan Pet Passive Abilities
# - Abyssal Might: Attack damage + max health scaling
# - Ocean's Grace: Water breathing + conduit power

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Leviathan

# Ocean's Grace: Water breathing + conduit power (permanent)
effect give @s water_breathing infinite 0 true
effect give @s conduit_power infinite 0 true

# Abyssal Might: Attack damage scaling (2.0 → 7.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s attack_damage base set 2.0
execute if score #value Pets.Calc matches 8..12 run attribute @s attack_damage base set 2.263
execute if score #value Pets.Calc matches 13..17 run attribute @s attack_damage base set 2.526
execute if score #value Pets.Calc matches 18..22 run attribute @s attack_damage base set 2.789
execute if score #value Pets.Calc matches 23..27 run attribute @s attack_damage base set 3.053
execute if score #value Pets.Calc matches 28..32 run attribute @s attack_damage base set 3.316
execute if score #value Pets.Calc matches 33..37 run attribute @s attack_damage base set 3.579
execute if score #value Pets.Calc matches 38..42 run attribute @s attack_damage base set 3.842
execute if score #value Pets.Calc matches 43..47 run attribute @s attack_damage base set 4.105
execute if score #value Pets.Calc matches 48..52 run attribute @s attack_damage base set 4.368
execute if score #value Pets.Calc matches 53..57 run attribute @s attack_damage base set 4.632
execute if score #value Pets.Calc matches 58..62 run attribute @s attack_damage base set 4.895
execute if score #value Pets.Calc matches 63..67 run attribute @s attack_damage base set 5.158
execute if score #value Pets.Calc matches 68..72 run attribute @s attack_damage base set 5.421
execute if score #value Pets.Calc matches 73..77 run attribute @s attack_damage base set 5.684
execute if score #value Pets.Calc matches 78..82 run attribute @s attack_damage base set 5.947
execute if score #value Pets.Calc matches 83..87 run attribute @s attack_damage base set 6.211
execute if score #value Pets.Calc matches 88..92 run attribute @s attack_damage base set 6.474
execute if score #value Pets.Calc matches 93..97 run attribute @s attack_damage base set 6.737
execute if score #value Pets.Calc matches 98..100 run attribute @s attack_damage base set 7.0

# Abyssal Might: Max health scaling (22 → 40)
execute if score #value Pets.Calc matches 1..7 run attribute @s max_health base set 22.0
execute if score #value Pets.Calc matches 8..12 run attribute @s max_health base set 22.947
execute if score #value Pets.Calc matches 13..17 run attribute @s max_health base set 23.895
execute if score #value Pets.Calc matches 18..22 run attribute @s max_health base set 24.842
execute if score #value Pets.Calc matches 23..27 run attribute @s max_health base set 25.789
execute if score #value Pets.Calc matches 28..32 run attribute @s max_health base set 26.737
execute if score #value Pets.Calc matches 33..37 run attribute @s max_health base set 27.684
execute if score #value Pets.Calc matches 38..42 run attribute @s max_health base set 28.632
execute if score #value Pets.Calc matches 43..47 run attribute @s max_health base set 29.579
execute if score #value Pets.Calc matches 48..52 run attribute @s max_health base set 30.526
execute if score #value Pets.Calc matches 53..57 run attribute @s max_health base set 31.474
execute if score #value Pets.Calc matches 58..62 run attribute @s max_health base set 32.421
execute if score #value Pets.Calc matches 63..67 run attribute @s max_health base set 33.368
execute if score #value Pets.Calc matches 68..72 run attribute @s max_health base set 34.316
execute if score #value Pets.Calc matches 73..77 run attribute @s max_health base set 35.263
execute if score #value Pets.Calc matches 78..82 run attribute @s max_health base set 36.211
execute if score #value Pets.Calc matches 83..87 run attribute @s max_health base set 37.158
execute if score #value Pets.Calc matches 88..92 run attribute @s max_health base set 38.105
execute if score #value Pets.Calc matches 93..97 run attribute @s max_health base set 39.053
execute if score #value Pets.Calc matches 98..100 run attribute @s max_health base set 40.0

