# ============================================================
# Dream Echoes — Particle Display Loop
# Runs every 3 seconds. Spawns gentle wisps at echo locations
# Only renders near players (markers in unloaded chunks are invisible to @e)
# ============================================================

execute as @e[type=marker,tag=ec.dream_echo] at @s if entity @a[distance=..32] run particle end_rod ~ ~0.5 ~ 0.2 0.5 0.2 0.01 3

# Check for click interactions on dream echoes
execute as @e[type=interaction,tag=ec.dream_echo_click] at @s if data entity @s interaction run function evercraft:dream_echoes/on_click

schedule function evercraft:dream_echoes/particles 60t
