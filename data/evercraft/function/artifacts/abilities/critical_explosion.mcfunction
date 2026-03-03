# Critical Explosion — Worldbreaker
# Explosion at target location + AoE knockback
advancement revoke @s only evercraft:artifacts/abilities/critical_explosion_trigger
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon tnt ~ ~ ~ {fuse:0,explosion_power:1.5f}
execute at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0 1
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.8 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
