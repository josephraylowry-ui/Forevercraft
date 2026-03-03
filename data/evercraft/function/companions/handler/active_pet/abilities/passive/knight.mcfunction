# Knight Pet Passive Abilities
# - Noble Armor: Armor toughness scaling
# - Shield Mastery: Shield cooldown reduced (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Knight

# Noble Armor: Armor toughness scaling
execute if score #value Pets.Calc matches 1..7 run return run attribute @s armor_toughness base set 0.5
execute if score #value Pets.Calc matches 8..12 run return run attribute @s armor_toughness base set 0.737
execute if score #value Pets.Calc matches 13..17 run return run attribute @s armor_toughness base set 0.974
execute if score #value Pets.Calc matches 18..22 run return run attribute @s armor_toughness base set 1.21
execute if score #value Pets.Calc matches 23..27 run return run attribute @s armor_toughness base set 1.447
execute if score #value Pets.Calc matches 28..32 run return run attribute @s armor_toughness base set 1.684
execute if score #value Pets.Calc matches 33..37 run return run attribute @s armor_toughness base set 1.92
execute if score #value Pets.Calc matches 38..42 run return run attribute @s armor_toughness base set 2.158
execute if score #value Pets.Calc matches 43..47 run return run attribute @s armor_toughness base set 2.395
execute if score #value Pets.Calc matches 48..52 run return run attribute @s armor_toughness base set 2.632
execute if score #value Pets.Calc matches 53..57 run return run attribute @s armor_toughness base set 2.868
execute if score #value Pets.Calc matches 58..62 run return run attribute @s armor_toughness base set 3.105
execute if score #value Pets.Calc matches 63..67 run return run attribute @s armor_toughness base set 3.342
execute if score #value Pets.Calc matches 68..72 run return run attribute @s armor_toughness base set 3.58
execute if score #value Pets.Calc matches 73..77 run return run attribute @s armor_toughness base set 3.816
execute if score #value Pets.Calc matches 78..82 run return run attribute @s armor_toughness base set 4.053
execute if score #value Pets.Calc matches 83..87 run return run attribute @s armor_toughness base set 4.29
execute if score #value Pets.Calc matches 88..92 run return run attribute @s armor_toughness base set 4.526
execute if score #value Pets.Calc matches 93..97 run return run attribute @s armor_toughness base set 4.763
execute if score #value Pets.Calc matches 98..100 run return run attribute @s armor_toughness base set 5.0
