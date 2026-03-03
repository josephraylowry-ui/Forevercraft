# Artifact Transmutation — Tick (1s schedule)
# Handles: interaction detection, break detection, ambient particles

# Self-schedule first
schedule function evercraft:transmute/tick 1s replace

# Detect right-click on anvil interaction entities
execute as @e[type=interaction,tag=TX.Interact] at @s if data entity @s interaction run function evercraft:transmute/on_interact

# Break detection: if lodestone is gone, clean up marker + interact
execute as @e[type=marker,tag=TX.Marker] at @s unless block ~ ~ ~ minecraft:lodestone run function evercraft:transmute/on_break

# Ambient particles on placed anvils (proximity-gated — skip if no player nearby)
execute as @e[type=marker,tag=TX.Marker] at @s if entity @a[distance=..48] run particle minecraft:reverse_portal ~ ~1.2 ~ 0.2 0.15 0.2 0.01 2
