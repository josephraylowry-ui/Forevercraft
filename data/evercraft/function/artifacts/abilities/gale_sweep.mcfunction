# Gale Sweep — Whirlwind
# Knockback + 2 damage to all enemies within 4 blocks
advancement revoke @s only evercraft:artifacts/abilities/gale_sweep_trigger
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] run damage @s 2 minecraft:mob_attack
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] at @s facing entity @p feet run tp @s ^ ^ ^-2
execute at @s run particle sweep_attack ~ ~1 ~ 1 0.3 1 0.1 8
playsound minecraft:entity.player.attack.sweep player @a[distance=..20] ~ ~ ~ 1 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
