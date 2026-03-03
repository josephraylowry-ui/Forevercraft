advancement revoke @s[tag=mt.small] only evercraft:treasure/mechanics/small/timer

execute if entity @s[scores={mt.small=..1}] run function evercraft:treasure/mechanics/small/over

scoreboard players remove @s mt.small 1