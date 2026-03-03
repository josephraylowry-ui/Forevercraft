# Wise Wanderer — Per-Tick GUI Maintenance
# Runs as the player with WW.InMenu tag, at their position

# Close if player moves too far from anchor (> 5 blocks)
execute unless entity @e[type=minecraft:marker,tag=WW.MenuAnchor,distance=..5] run function evercraft:professions/jobs/wise_wanderer/gui/close
execute unless entity @s[tag=WW.InMenu] run return 0

# Check for buy clicks
function evercraft:professions/jobs/wise_wanderer/gui/check_clicks

# Update XP display and row availability
function evercraft:professions/jobs/wise_wanderer/gui/refresh
