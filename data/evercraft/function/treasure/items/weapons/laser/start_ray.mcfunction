advancement revoke @s only evercraft:treasure/items/weapons/laser

tag @s add mt.laser_scope
scoreboard players set #mt.hit mt.ray_line 0
scoreboard players set #mt.distance mt.ray_line 0

# Laser sound effect

playsound minecraft:entity.firework_rocket.large_blast master @a[distance=..25] ~ ~ ~ 0.5 1.67 1

# The raycast

function evercraft:treasure/database/get with entity @s

execute anchored eyes run function evercraft:treasure/items/weapons/laser/ray

tag @s remove mt.laser_scope

advancement revoke @s only evercraft:treasure/items/weapons/laser