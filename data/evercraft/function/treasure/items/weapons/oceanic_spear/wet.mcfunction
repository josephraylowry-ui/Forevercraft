execute at @s run particle minecraft:splash ~ ~1 ~ 0.4 0.4 0.4 0 10 force

scoreboard players remove @s mt.wet 1

execute if entity @s[scores={mt.wet=..0}] run function evercraft:treasure/items/weapons/oceanic_spear/wet_over