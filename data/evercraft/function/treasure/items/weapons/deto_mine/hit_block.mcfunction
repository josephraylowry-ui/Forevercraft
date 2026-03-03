scoreboard players set #mt.hit mt.ray_line 1

tag @s remove mt.deto_mine

execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mt.entity","mt.deto_mine"]}

scoreboard players set @e[type=armor_stand,tag=mt.deto_mine,distance=..1.8,sort=nearest] mt.self_kill 100