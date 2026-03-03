tag @s remove mt.light
attribute @s gravity modifier remove mt.light
attribute @s safe_fall_distance modifier remove mt.light

playsound minecraft:entity.breeze.death player @s ~ ~ ~ 0.2 2

scoreboard players set @s mt.light 0