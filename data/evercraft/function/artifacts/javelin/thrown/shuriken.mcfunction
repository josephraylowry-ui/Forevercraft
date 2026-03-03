# Shuriken of Ice (Ornate) — Thrown: Blizzard Impact
# 3 freeze damage + Slowness III (3s) + Mining Fatigue I (2s) in 3-block AoE
# Cooldown: 15s

scoreboard players set @s ec.jv_cd 15

execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s as @e[type=!player,distance=..3] run damage @s 3 minecraft:freeze
execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s run effect give @e[type=!player,distance=..3] slowness 3 2 true
execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s run effect give @e[type=!player,distance=..3] mining_fatigue 2 0 true
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run particle snowflake ~ ~1 ~ 1.5 0.5 1.5 0.04 30
playsound minecraft:block.glass.break player @s ~ ~ ~ 0.8 0.8

scoreboard players add @s ach.weapon_abilities 1
