# Read current vanilla XP level
execute store result score @s wm.curr_xp run experience query @s levels

# Calculate gain since last check
scoreboard players operation @s wm.xp_gained = @s wm.curr_xp
scoreboard players operation @s wm.xp_gained -= @s wm.prev_xp

# Update previous for next check
scoreboard players operation @s wm.prev_xp = @s wm.curr_xp

# If gained XP, feed it to the weapon
execute if score @s wm.xp_gained matches 1.. run function evercraft:weapon_mastery/add_xp
