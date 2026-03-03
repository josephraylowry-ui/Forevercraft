# Wide Sweep — Claymore
# Damages all enemies in a 5 block radius with sweep
advancement revoke @s only evercraft:artifacts/abilities/wide_sweep_trigger
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 2 minecraft:mob_attack
execute at @s run particle sweep_attack ~ ~1 ~ 1.5 0.3 1.5 0.1 10
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1 0.6

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
