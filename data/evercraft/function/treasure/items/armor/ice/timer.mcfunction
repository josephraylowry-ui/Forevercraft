scoreboard players remove @s mt.ice_shoes_timer 1

particle snowflake ~ ~ ~ 0.2 0.2 0.2 0.1 5 force

execute if entity @s[scores={mt.ice_shoes_timer=..0}] run function evercraft:treasure/items/armor/ice/over