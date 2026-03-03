advancement revoke @s[tag=mt.step_height] only evercraft:treasure/mechanics/step_height/timer

execute if entity @s[scores={mt.step_height=..1}] run function evercraft:treasure/mechanics/step_height/over

scoreboard players remove @s mt.step_height 1

execute if entity @s[tag=mt.step_height] run function evercraft:treasure/mechanics/step_height/particles