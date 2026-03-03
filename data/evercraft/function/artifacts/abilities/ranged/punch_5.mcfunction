# Ranged Punch 5 - Knockback arrows
# Knocks target back ~3.0 blocks on arrow hit

advancement revoke @s only evercraft:artifacts/abilities/ranged/punch_5_trigger

# Knock target away from player
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^-3.0

# Visual feedback
execute at @s run particle cloud ~ ~0.5 ~ 0.2 0.2 0.2 0.05 8
playsound minecraft:entity.player.attack.knockback player @s ~ ~ ~ 0.6 0.7
