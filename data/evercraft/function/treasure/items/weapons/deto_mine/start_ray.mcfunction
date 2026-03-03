advancement revoke @s only evercraft:treasure/items/weapons/detonation_mine

tag @s add mt.deto_mine
scoreboard players set #mt.hit mt.ray_line 0
scoreboard players set #mt.distance mt.ray_line 0

# Laser sound effect

playsound minecraft:entity.firework_rocket.large_blast master @a[distance=..25] ~ ~ ~ 0.5 1.67 1

# The raycast

execute anchored eyes run function evercraft:treasure/items/weapons/deto_mine/ray