# Lore Discovery: Check sparkle lifetimes (every 5 seconds)
schedule function evercraft:lore/tick_despawn 100t

execute as @e[type=marker,tag=ec.lore_data] run function evercraft:lore/check_despawn
