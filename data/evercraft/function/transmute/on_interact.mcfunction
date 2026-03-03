# Transmutation Stand — Interaction detected (right-click)
# Run as: the interaction entity, at its position

# Clear interaction data so it can fire again
data remove entity @s interaction

# If nearest player is already in a transmute menu, ignore
execute if entity @p[distance=..6,tag=TX.InMenu] run return 0

# Open GUI for the nearest player
execute as @p[distance=..6,tag=!TX.InMenu] at @s run function evercraft:transmute/gui/open
