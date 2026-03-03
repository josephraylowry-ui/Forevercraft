advancement revoke @s[tag=mt.big] only evercraft:treasure/mechanics/big/timer

execute if entity @s[scores={mt.big=..1}] run function evercraft:treasure/mechanics/big/over

scoreboard players remove @s mt.big 1