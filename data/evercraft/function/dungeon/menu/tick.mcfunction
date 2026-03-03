# Dungeon Difficulty Menu — Tick
# Run as: player with DG.InMenu tag, at player position

execute unless entity @s[tag=DG.InMenu] run return 0

# Close if too far from menu elements
execute unless entity @e[type=interaction,tag=DG.MenuEl,distance=..8] run return run function evercraft:dungeon/menu/close

# Check for clicks
function evercraft:dungeon/menu/check_clicks
