# Mjolnir (Exquisite) — Thrown: Chain Lightning
# 3 lightning damage to 3 targets in 6-block radius at impact
# Cooldown: 18s

scoreboard players set @s ec.jv_cd 18

execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] as @e[type=!player,type=!item,distance=..6,limit=3,sort=nearest] run damage @s 3 minecraft:lightning_bolt
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon lightning_bolt ~ ~ ~
execute at @s run particle electric_spark ~ ~1 ~ 1.5 1 1.5 0.2 30
playsound minecraft:entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.8 1.2

scoreboard players add @s ach.weapon_abilities 1
