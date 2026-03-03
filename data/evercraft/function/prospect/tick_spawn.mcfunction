# Ore Node: Per-second spawn timer check
# Self-scheduling 1s loop
schedule function evercraft:prospect/tick_spawn 1s

# Process each online player (all dimensions)
execute as @a at @s run function evercraft:prospect/check_spawn
