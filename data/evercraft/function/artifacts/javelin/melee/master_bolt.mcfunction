# Master Bolt (Mythical) — Melee: Zeus's Touch
# 2 lightning damage + Weakness I (2s) on target
# Cooldown: 22s

scoreboard players set @s ec.jv_cd 22

execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run damage @s 2 minecraft:lightning_bolt
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run effect give @s weakness 2 0 true
execute at @s run particle electric_spark ~ ~1 ~ 0.8 0.8 0.8 0.2 25
playsound minecraft:entity.lightning_bolt.impact player @a[distance=..20] ~ ~ ~ 0.5 1.0

scoreboard players add @s ach.weapon_abilities 1
