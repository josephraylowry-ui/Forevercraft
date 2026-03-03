advancement revoke @s[tag=mt.light] only evercraft:treasure/mechanics/light/timer

execute if entity @s[scores={mt.light=..1}] run function evercraft:treasure/mechanics/light/over

execute if entity @s[tag=mt.light] run function evercraft:treasure/mechanics/light/particles

scoreboard players remove @s mt.light 1