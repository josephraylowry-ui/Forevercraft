scoreboard players remove @s mt.charm_timer 1

advancement revoke @s only evercraft:treasure/mechanics/charm/timer

execute if entity @s[scores={mt.charm_timer=..0}] run function evercraft:treasure/mechanics/charm/over
