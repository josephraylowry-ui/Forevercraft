execute if score @s mt.var matches 11.. run return fail 

execute store result score #temp mt.var run random value 1..3

$execute if score #temp mt.var matches 1 run summon zombie ~ ~ ~ {Team:"mt.necromancy",CustomName:"$(player_name)",health:50f,equipment:{mainhand:{id:"minecraft:netherite_axe",count:1},head:{id:"minecraft:netherite_helmet",count:1}},attributes:[{id:"minecraft:follow_range",base:30},{id:"minecraft:knockback_resistance",base:100},{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0.4}]}
$execute if score #temp mt.var matches 2 run summon skeleton ~ ~ ~ {Team:"mt.necromancy",CustomName:"$(player_name)",health:50f,equipment:{mainhand:{id:"minecraft:bow",count:1},head:{id:"minecraft:netherite_helmet",count:1}},attributes:[{id:"minecraft:follow_range",base:30},{id:"minecraft:knockback_resistance",base:100},{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0.4}]}
$execute if score #temp mt.var matches 3 run summon wither_skeleton ~ ~ ~ {Team:"mt.necromancy",CustomName:"$(player_name)",health:50f,equipment:{mainhand:{id:"minecraft:netherite_axe",count:1},head:{id:"minecraft:netherite_helmet",count:1}},attributes:[{id:"minecraft:follow_range",base:30},{id:"minecraft:knockback_resistance",base:100},{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0.4}]}

spreadplayers ~ ~ 1 15 true @n[type=#evercraft:treasure/undead,team=mt.necromancy]

$execute at "$(player_name)" as @e[type=!player,team=mt.necromancy] run effect give @s wither 1 0 true