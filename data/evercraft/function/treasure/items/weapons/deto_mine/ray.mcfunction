# Block Check
execute unless block ~ ~ ~ #evercraft:treasure/air run function evercraft:treasure/items/weapons/deto_mine/hit_block
scoreboard players add #mt.distance mt.ray_line 1

execute if score #mt.hit mt.ray_line matches 0 if score #mt.distance mt.ray_line matches ..250 positioned ^ ^ ^0.02 run function evercraft:treasure/items/weapons/deto_mine/ray