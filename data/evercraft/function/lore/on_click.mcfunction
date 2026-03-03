# Lore Discovery: Handle sparkle interaction click
# Run as interaction entity, at sparkle position

# Clear the interaction data
data remove entity @s interaction

# Start pickup for the nearest player within 3 blocks
execute as @p[distance=..3] at @s run function evercraft:lore/start_pickup
