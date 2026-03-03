# Meteor Strike — Starfall Axe
# AoE fire damage on hit + fire particles (falling star impact)
advancement revoke @s only evercraft:artifacts/abilities/meteor_strike_trigger
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] as @e[type=!player,type=!item,distance=..3] run damage @s 3 minecraft:on_fire
execute at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] as @e[type=!player,type=!item,distance=..3] run data merge entity @s {Fire:60s}
execute at @s run particle lava ~ ~2 ~ 1 1 1 0.1 20
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
