# Ranged Punch 4 - Knockback arrows
# Knocks target back ~2.5 blocks on arrow hit

advancement revoke @s only evercraft:artifacts/abilities/ranged/punch_4_trigger

# Knock target away from player
execute at @s as @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^-2.5

# Visual feedback
execute at @s run particle cloud ~ ~0.5 ~ 0.2 0.2 0.2 0.05 7
playsound minecraft:entity.player.attack.knockback player @s ~ ~ ~ 0.6 0.7999999999999999
