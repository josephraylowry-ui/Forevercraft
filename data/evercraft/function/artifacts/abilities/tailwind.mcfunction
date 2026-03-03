# Wind Chime - Tailwind
# Speed I while sprinting, reduced fall damage
# Called from tick function for players with the accessory

# Check if player has Wind Chime in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"wind_chime"}] run return 0

# Tailwind: Speed I while sprinting
execute if predicate evercraft:sprinting run effect give @s speed 2 0 true

# Passive: Slow Falling for brief moment to prevent fall damage under 6 blocks
# Apply slow falling when falling (not on ground, negative vertical velocity)
execute store result score #fall_dist ec.var run data get entity @s fall_distance 1
execute if score #fall_dist ec.var matches 2..6 run effect give @s slow_falling 1 0 true

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
