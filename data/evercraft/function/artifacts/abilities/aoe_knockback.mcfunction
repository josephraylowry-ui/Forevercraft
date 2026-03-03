# AoE Knockback - Knockback all nearby enemies
# Earthshaker ability (Striker: doubled KB at 50+ Impact, +Slowness at 75+ Impact)

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/aoe_knockback_trigger

# === STRIKER IMPACT SCALING ===
# 75+ Impact: KB doubled + Slowness I 3s
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] at @s facing entity @p feet run tp @s ^ ^ ^-3
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] run effect give @s slowness 3 0 false
execute if score @s ec.sk_impact matches 75.. at @s run particle explosion ~ ~0.5 ~ 1.5 0.2 1.5 0.1 25
execute if score @s ec.sk_impact matches 75.. run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.7 0.5
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: KB doubled
execute if score @s ec.sk_impact matches 50..74 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] at @s facing entity @p feet run tp @s ^ ^ ^-3
execute if score @s ec.sk_impact matches 50..74 at @s run particle explosion ~ ~0.5 ~ 1.5 0.2 1.5 0.1 25
execute if score @s ec.sk_impact matches 50..74 run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.6 0.6
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: normal KB
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..4] at @s facing entity @p feet run tp @s ^ ^ ^-1.5

# Visual/audio feedback
execute at @s run particle explosion ~ ~0.5 ~ 1 0.2 1 0.1 20
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.5 0.7

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
