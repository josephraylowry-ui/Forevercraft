playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..20] ~ ~ ~ 1 0.2 1

execute on attacker run item modify entity @s[gamemode=!creative] weapon.mainhand {function:"minecraft:set_count",count:-1,add:1b}

kill @s