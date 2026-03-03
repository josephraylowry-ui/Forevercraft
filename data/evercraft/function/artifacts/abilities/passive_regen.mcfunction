# Healer's Salve - Passive Regeneration
# Grants Regeneration I when player is above 50% HP and has item in inventory
# Also grants +2 max hearts while held
# Called from tick function for players with the accessory

# Check if player has Healer's Salve in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"healers_salve"}] run return 0

# Apply +2 max hearts (4 HP) via attribute modifier
attribute @s max_health modifier add evercraft:healers_salve 4 add_value

# Get current and max health to check if above 50%
execute store result score #current_hp ec.var run data get entity @s Health 1
execute store result score #max_hp ec.var run attribute @s max_health get 1

# Calculate 50% threshold
scoreboard players operation #threshold ec.var = #max_hp ec.var
scoreboard players operation #threshold ec.var /= #2 ec.const

# Only apply regen if above 50% HP
execute if score #current_hp ec.var > #threshold ec.var run effect give @s regeneration 3 0 true

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
