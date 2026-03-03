execute if entity @s[scores={mt.big=1..}] run function evercraft:treasure/mechanics/big/over
execute if entity @s[scores={mt.small=1..}] run function evercraft:treasure/mechanics/small/over
execute if entity @s[scores={mt.step_height=1..}] run function evercraft:treasure/mechanics/step_height/over
execute if entity @s[scores={mt.reach=1..}] run function evercraft:treasure/mechanics/reach/over
execute if entity @s[scores={mt.light=1..}] run function evercraft:treasure/mechanics/light/over

scoreboard players set @s mt.death 0