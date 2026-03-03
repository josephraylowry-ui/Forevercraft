scoreboard players remove @s mt.rift_timer 1

effect clear @s regeneration

particle minecraft:sculk_soul ~ ~0.8 ~ 0.4 0.6 0.4 0 1 force

execute if entity @s[scores={mt.rift_timer=..0}] run function evercraft:treasure/items/weapons/rumble_axe/over