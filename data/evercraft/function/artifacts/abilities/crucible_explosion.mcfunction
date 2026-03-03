# Crucible Explosion — Crucible Trident
# Creates an explosion at the target location (not player location)

advancement revoke @s only evercraft:artifacts/abilities/crucible_explosion_trigger

# Find the hit entity and create explosion at THEIR location
# Key fix: use "as @e" then "at @s" to execute at the entity's position
execute as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s run particle explosion ~ ~1 ~ 0.8 0.8 0.8 0.1 8
execute as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s run playsound minecraft:entity.generic.explode player @a[distance=..30] ~ ~ ~ 0.8 0.8
execute as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s as @e[type=!player,distance=..4] run damage @s 6 minecraft:explosion

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
