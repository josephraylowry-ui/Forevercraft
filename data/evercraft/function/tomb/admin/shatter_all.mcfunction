# Tomb System — Admin: Shatter All Graves
# Shatters every active grave in the world
# Run by operator: /function evercraft:tomb/admin/shatter_all

execute as @e[type=marker,tag=ec.tomb_data] at @s run function evercraft:tomb/shatter
tellraw @s [{"text":"All active graves have been shattered.","color":"gold"}]
