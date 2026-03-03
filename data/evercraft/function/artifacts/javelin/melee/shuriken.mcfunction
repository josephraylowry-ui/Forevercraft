# Shuriken of Ice (Ornate) — Melee: Frozen Strike
# 1 freeze damage + Slowness II (2s) on target
# Cooldown: 15s

scoreboard players set @s ec.jv_cd 15

execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run damage @s 1 minecraft:freeze
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run effect give @s slowness 2 1 true
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s run particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0.02 12
playsound minecraft:block.glass.break player @s ~ ~ ~ 0.7 1.5

scoreboard players add @s ach.weapon_abilities 1
