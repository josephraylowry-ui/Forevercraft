# Crucible Trident (Exquisite) — Thrown: Crucible Explosion
# 6 explosion damage in 4-block AoE at impact
# Cooldown: 18s

scoreboard players set @s ec.jv_cd 18

execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s as @e[type=!player,distance=..4] run damage @s 6 minecraft:explosion
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run particle explosion ~ ~1 ~ 0.8 0.8 0.8 0.1 8
playsound minecraft:entity.generic.explode player @a[distance=..30] ~ ~ ~ 0.8 0.8

scoreboard players add @s ach.weapon_abilities 1
