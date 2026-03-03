# Flame Strike 2 - Sets target on fire for 8 seconds
# Replaces Fire Aspect 2

advancement revoke @s only evercraft:artifacts/abilities/melee/flame_strike_2_trigger

# Set target on fire
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run data merge entity @s {Fire:160s}

# Visual feedback
execute at @s run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0.02 16
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.5 1.3
