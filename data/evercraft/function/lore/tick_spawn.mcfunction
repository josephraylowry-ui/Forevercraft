# Lore Discovery: Per-second spawn timer check
# Self-scheduling 1s loop
schedule function evercraft:lore/tick_spawn 1s

# Process each online player
execute as @a at @s run function evercraft:lore/check_spawn
