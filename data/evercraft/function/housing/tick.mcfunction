# ============================================================
# Player Housing System — Tick (2s self-schedule)
# Handles: interaction detection, break detection, zone checks, particles
# ============================================================

# Self-schedule first so loop never dies
schedule function evercraft:housing/tick 2s replace

# Detect right-click on hearthstone interaction entities
execute as @e[type=interaction,tag=HS.Interact] at @s if data entity @s interaction run function evercraft:housing/on_interact

# OPT: All marker checks (break, particles) consolidated into 1 entity scan
# Particles proximity-gated (skip if no player within 48 blocks)
execute as @e[type=marker,tag=HS.Marker] at @s run function evercraft:housing/tick_marker

# Zone checks for all players with homes
execute as @a[scores={hs.tier=1..}] at @s run function evercraft:housing/zone/check
