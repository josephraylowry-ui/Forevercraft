# Norroen Trident (Uncommon) — Thrown: Frost Burst
# 2 freeze damage + Slowness II (2s) in 2-block AoE at impact
# Cooldown: 8s

scoreboard players set @s ec.jv_cd 8

execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s as @e[type=!player,distance=..2] run damage @s 2 minecraft:freeze
execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s run effect give @e[type=!player,distance=..2] slowness 2 1 true
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run particle snowflake ~ ~1 ~ 1.0 0.5 1.0 0.03 20
playsound minecraft:block.powder_snow.break player @s ~ ~ ~ 0.8 0.8

scoreboard players add @s ach.weapon_abilities 1
