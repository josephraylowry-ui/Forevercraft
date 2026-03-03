scoreboard players add @s mt.var 1

particle small_flame ~ ~ ~ 20 20 20 0 200 force

execute if entity @s[scores={mt.var=..20}] as @e[type=#evercraft:treasure/targets,distance=..20] run function evercraft:treasure/items/utility/sense_of_urgency/effect

execute if entity @s[scores={mt.var=21..}] run function evercraft:treasure/items/utility/sense_of_urgency/kill