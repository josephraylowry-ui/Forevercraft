# Tomb System — Admin: Shatter Nearest Grave
# Shatters the closest grave to the executing player
# Run by operator: /function evercraft:tomb/admin/shatter_nearest

execute as @e[type=marker,tag=ec.tomb_data,sort=nearest,limit=1] at @s run function evercraft:tomb/shatter
tellraw @s [{"text":"Nearest grave has been shattered.","color":"gold"}]
