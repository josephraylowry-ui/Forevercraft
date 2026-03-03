# Spirit Wolf Pet Passive Abilities
# - Spectral Form: Invisibility + movement speed boost
# - Soul Drain: Tag for lifesteal trigger on attack
# - Pack Hunter: Bonus damage based on nearby hostile mob count

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Spirit_Wolf

# Spectral Form - Invisibility (permanent, particles hidden)
effect give @s invisibility infinite 0 true

# Pack Hunter - Count nearby hostiles and add bonus damage
# Base attack damage + 0.5 per mob up to 10 mobs = +5 max
scoreboard players set #mob_count Pets.Calc 0
execute store result score #mob_count Pets.Calc if entity @e[distance=..8, type=#evercraft:companions/hostile]
execute if score #mob_count Pets.Calc matches 10.. run scoreboard players set #mob_count Pets.Calc 10

# Base damage from level (1.0 to 2.0), then add pack bonus
execute if score #value Pets.Calc matches 1..7 run scoreboard players set #base_dmg Pets.Calc 100
execute if score #value Pets.Calc matches 8..12 run scoreboard players set #base_dmg Pets.Calc 105
execute if score #value Pets.Calc matches 13..17 run scoreboard players set #base_dmg Pets.Calc 110
execute if score #value Pets.Calc matches 18..22 run scoreboard players set #base_dmg Pets.Calc 115
execute if score #value Pets.Calc matches 23..27 run scoreboard players set #base_dmg Pets.Calc 125
execute if score #value Pets.Calc matches 28..32 run scoreboard players set #base_dmg Pets.Calc 135
execute if score #value Pets.Calc matches 33..37 run scoreboard players set #base_dmg Pets.Calc 145
execute if score #value Pets.Calc matches 38..42 run scoreboard players set #base_dmg Pets.Calc 155
execute if score #value Pets.Calc matches 43..47 run scoreboard players set #base_dmg Pets.Calc 165
execute if score #value Pets.Calc matches 48..52 run scoreboard players set #base_dmg Pets.Calc 175
execute if score #value Pets.Calc matches 53..57 run scoreboard players set #base_dmg Pets.Calc 180
execute if score #value Pets.Calc matches 58..62 run scoreboard players set #base_dmg Pets.Calc 185
execute if score #value Pets.Calc matches 63..67 run scoreboard players set #base_dmg Pets.Calc 188
execute if score #value Pets.Calc matches 68..72 run scoreboard players set #base_dmg Pets.Calc 191
execute if score #value Pets.Calc matches 73..77 run scoreboard players set #base_dmg Pets.Calc 194
execute if score #value Pets.Calc matches 78..82 run scoreboard players set #base_dmg Pets.Calc 196
execute if score #value Pets.Calc matches 83..87 run scoreboard players set #base_dmg Pets.Calc 198
execute if score #value Pets.Calc matches 88..92 run scoreboard players set #base_dmg Pets.Calc 199
execute if score #value Pets.Calc matches 93..97 run scoreboard players set #base_dmg Pets.Calc 199
execute if score #value Pets.Calc matches 98..100 run scoreboard players set #base_dmg Pets.Calc 200

# Add pack bonus (50 per mob = 0.5 damage per mob)
scoreboard players operation #pack_bonus Pets.Calc = #mob_count Pets.Calc
scoreboard players operation #pack_bonus Pets.Calc *= #50 Pets.Calc
scoreboard players operation #base_dmg Pets.Calc += #pack_bonus Pets.Calc

# Convert to float (divide by 100)
execute store result storage evercraft:companions math.attack_dmg float 0.01 run scoreboard players get #base_dmg Pets.Calc

# Spectral Form - Movement speed scaling (0.105 to 0.18)
execute if score #value Pets.Calc matches 1..7 run attribute @s movement_speed base set 0.105
execute if score #value Pets.Calc matches 8..12 run attribute @s movement_speed base set 0.11
execute if score #value Pets.Calc matches 13..17 run attribute @s movement_speed base set 0.115
execute if score #value Pets.Calc matches 18..22 run attribute @s movement_speed base set 0.12
execute if score #value Pets.Calc matches 23..27 run attribute @s movement_speed base set 0.125
execute if score #value Pets.Calc matches 28..32 run attribute @s movement_speed base set 0.13
execute if score #value Pets.Calc matches 33..37 run attribute @s movement_speed base set 0.135
execute if score #value Pets.Calc matches 38..42 run attribute @s movement_speed base set 0.14
execute if score #value Pets.Calc matches 43..47 run attribute @s movement_speed base set 0.145
execute if score #value Pets.Calc matches 48..52 run attribute @s movement_speed base set 0.15
execute if score #value Pets.Calc matches 53..57 run attribute @s movement_speed base set 0.155
execute if score #value Pets.Calc matches 58..62 run attribute @s movement_speed base set 0.16
execute if score #value Pets.Calc matches 63..67 run attribute @s movement_speed base set 0.165
execute if score #value Pets.Calc matches 68..72 run attribute @s movement_speed base set 0.168
execute if score #value Pets.Calc matches 73..77 run attribute @s movement_speed base set 0.171
execute if score #value Pets.Calc matches 78..82 run attribute @s movement_speed base set 0.174
execute if score #value Pets.Calc matches 83..87 run attribute @s movement_speed base set 0.176
execute if score #value Pets.Calc matches 88..92 run attribute @s movement_speed base set 0.178
execute if score #value Pets.Calc matches 93..97 run attribute @s movement_speed base set 0.179
execute if score #value Pets.Calc matches 98..100 run attribute @s movement_speed base set 0.18

# Apply calculated attack damage via macro (uses math.attack_dmg from line 49)
function evercraft:companions/handler/active_pet/abilities/passive/spirit_wolf_set_dmg with storage evercraft:companions math
