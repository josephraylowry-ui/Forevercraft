# Entity Check
execute if score #mt.hit mt.ray_line matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=!#evercraft:treasure/non_entity,tag=!mt.laser_scope,dx=0,sort=nearest] run function evercraft:treasure/items/weapons/laser/check_hit_entity

# Beam
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

# Block Check
execute if block ~ ~ ~ #evercraft:treasure/blocks run function evercraft:treasure/items/weapons/laser/hit_block with storage evercraft:treasure/write data
scoreboard players add #mt.distance mt.ray_line 1

#If the raycast failed, run a function with the custom commands.
execute if score #mt.hit mt.ray_line matches 0 if score #mt.distance mt.ray_line matches ..6000 positioned ^ ^ ^0.05 run function evercraft:treasure/items/weapons/laser/ray