scoreboard players set #mt.hit mt.ray_line 1

execute positioned ~ ~ ~ run particle dust{color:[1.000,0.098,0.098],scale:1} ~ ~ ~ 0.5 0.5 0.5 0.1 1000 force @a

$execute as @e[type=#evercraft:treasure/targets,distance=..1.5] run damage @s 25 minecraft:magic by $(hexUUID)