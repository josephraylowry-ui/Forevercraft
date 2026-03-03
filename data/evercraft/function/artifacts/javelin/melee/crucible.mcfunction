# Crucible Trident (Exquisite) — Melee: Shockwave
# AoE knockback + 1 explosion damage in 2-block radius
# Cooldown: 18s

scoreboard players set @s ec.jv_cd 18

execute at @s as @e[type=!player,distance=..2,limit=5,sort=nearest] run damage @s 1 minecraft:player_explosion
execute at @s run particle explosion ~ ~0.5 ~ 0.5 0.3 0.5 0.1 5
playsound minecraft:entity.generic.explode player @a[distance=..15] ~ ~ ~ 0.6 1.2

scoreboard players add @s ach.weapon_abilities 1
