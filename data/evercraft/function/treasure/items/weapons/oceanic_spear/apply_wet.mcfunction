execute at @s run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 1 force
scoreboard players set @s mt.wet 100

execute if entity @s run playsound minecraft:item.trident.thunder master @a[distance=..50] ~ ~ ~ 0.5 2 1

attribute @s movement_speed modifier add mt.wet -0.25 add_multiplied_total
attribute @s armor modifier add mt.wet -0.25 add_multiplied_total

execute at @s run particle minecraft:splash ~ ~1 ~ 0.4 0.4 0.4 0 10 force