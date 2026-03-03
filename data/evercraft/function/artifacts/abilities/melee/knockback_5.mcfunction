# Melee Knockback 5 - Enhanced knockback on melee hit
# Knocks target back ~2.3 blocks

advancement revoke @s only evercraft:artifacts/abilities/melee/knockback_5_trigger

# Knock target away from player
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^-2.3

# Visual feedback
execute at @s run particle crit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 15
playsound minecraft:entity.player.attack.knockback player @s ~ ~ ~ 0.8 0.5
