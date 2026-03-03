scoreboard players set @s[scores={mt.laser_scope=30..}] mt.laser_scope 30

scoreboard players remove @s mt.laser_scope 2

execute anchored eyes positioned ^-0.1 ^ ^1 run particle dust{color:[1.000,0.098,0.098],scale:0.45} ~ ~ ~ 0 0 0 0 1 force @a

execute anchored eyes if entity @s[scores={mt.laser_scope=..1},level=..4] run tellraw @s ["",{text:"[",color:"gray"},{text:"Mine",color:"white"},{text:" Treasure",color:"gold"},{text:"] ",color:"gray"},{text:"You do not have enough experience to fire this weapon!"}]

execute anchored eyes if entity @s[scores={mt.laser_scope=..1},level=5..] run function evercraft:treasure/items/weapons/laser/start_ray
xp add @s[scores={mt.laser_scope=..1},level=5..] -5 levels

execute if score @s mt.laser_scope matches ..1 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 2 1
execute if score @s mt.laser_scope matches 2 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 2 1
execute if score @s mt.laser_scope matches 3 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 2 1
execute if score @s mt.laser_scope matches 4 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.975 1
execute if score @s mt.laser_scope matches 5 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.9 1
execute if score @s mt.laser_scope matches 6 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.825 1
execute if score @s mt.laser_scope matches 7 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.75 1
execute if score @s mt.laser_scope matches 8 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.675 1
execute if score @s mt.laser_scope matches 9 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.6 1
execute if score @s mt.laser_scope matches 10 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.525 1
execute if score @s mt.laser_scope matches 11 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.45 1
execute if score @s mt.laser_scope matches 12 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.375 1
execute if score @s mt.laser_scope matches 13 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.3 1
execute if score @s mt.laser_scope matches 14 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.225 1
execute if score @s mt.laser_scope matches 15 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.15 1
execute if score @s mt.laser_scope matches 16 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1.075 1
execute if score @s mt.laser_scope matches 17 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 1 1
execute if score @s mt.laser_scope matches 18 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.925 1
execute if score @s mt.laser_scope matches 19 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.850 1
execute if score @s mt.laser_scope matches 20 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.75 1
execute if score @s mt.laser_scope matches 21 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.675 1
execute if score @s mt.laser_scope matches 22 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.6 1
execute if score @s mt.laser_scope matches 23 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.525 1
execute if score @s mt.laser_scope matches 24 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.45 1
execute if score @s mt.laser_scope matches 25 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.375 1
execute if score @s mt.laser_scope matches 26 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.3 1
execute if score @s mt.laser_scope matches 27 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.225 1
execute if score @s mt.laser_scope matches 28 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.15 1
execute if score @s mt.laser_scope matches 29 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.075 1
execute if score @s mt.laser_scope matches 30 run playsound minecraft:entity.experience_orb.pickup master @a[distance=..10] ~ ~ ~ 0.1 0.0 1

scoreboard players set @s[scores={mt.laser_scope=..1}] mt.laser_scope 30

advancement revoke @s only evercraft:treasure/items/weapons/laser