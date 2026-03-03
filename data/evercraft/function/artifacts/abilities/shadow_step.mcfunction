# Shadow Step — Ninja Trident
# On hit: Teleport to target + Invisibility 5s
advancement revoke @s only evercraft:artifacts/abilities/shadow_step_trigger
execute at @s as @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] at @s run tp @p ~ ~ ~
effect give @s invisibility 5 0 true
effect give @s speed 3 1 false
execute at @s run particle large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.05 20
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1.2
