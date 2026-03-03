advancement revoke @s[tag=mt.reach] only evercraft:treasure/mechanics/reach/timer

execute if entity @s[scores={mt.reach=..1}] run function evercraft:treasure/mechanics/reach/over

scoreboard players remove @s mt.reach 1

execute if entity @s[tag=mt.reach] run particle minecraft:soul_fire_flame ~0.000 ~0.700 ~0.1 0.1 0.1 0 0.05 2 force @a