# Ancient Trident (Rare) — Thrown: Tidal Strike
# 3 drown damage + Slowness I (3s) on target
# Cooldown: 12s

scoreboard players set @s ec.jv_cd 12

execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run damage @s 3 minecraft:drown
execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run effect give @s slowness 3 0 true
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run particle bubble ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:entity.trident.return player @s ~ ~ ~ 0.8 0.8

scoreboard players add @s ach.weapon_abilities 1
