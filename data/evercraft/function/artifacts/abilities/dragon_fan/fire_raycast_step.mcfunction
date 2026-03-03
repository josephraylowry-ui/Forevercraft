# Fire Raycast Step - Recursive raycast for fire breath
# Steps forward 0.5 blocks at a time, up to 15 blocks (30 steps)

# Increment distance counter
scoreboard players add #fire_dist ec.var 1

# Show particle trail
particle flame ~ ~ ~ 0 0 0 0 1

# Check if we hit a solid block that can be set on fire
execute unless block ~ ~ ~ #minecraft:replaceable run function evercraft:artifacts/abilities/dragon_fan/ignite_block
execute unless block ~ ~ ~ #minecraft:replaceable run return 0

# Continue raycast if under 30 steps (15 blocks)
execute if score #fire_dist ec.var matches ..30 positioned ^ ^ ^0.5 run function evercraft:artifacts/abilities/dragon_fan/fire_raycast_step
