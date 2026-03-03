# Striker — Empowered Impact Strike
# Consumes all Impact on hit for AoE bonus damage
# Run as player with ec.sk_impact >= 25, not sneaking

# === CATACLYSM (100) ===
execute if score @s ec.sk_impact matches 100 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..10] run damage @s 10 minecraft:mob_attack
execute if score @s ec.sk_impact matches 100 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..10] run effect give @s slowness 5 2 false
execute if score @s ec.sk_impact matches 100 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..10] run effect give @s mining_fatigue 5 1 false
execute if score @s ec.sk_impact matches 100 at @s run particle explosion ~ ~0.5 ~ 5 0.3 5 0.1 30
execute if score @s ec.sk_impact matches 100 at @s run playsound minecraft:entity.generic.explode player @a[distance=..30] ~ ~ ~ 1.0 0.4
execute if score @s ec.sk_impact matches 100 run title @s actionbar [{"text":"CATACLYSM!","color":"dark_red","bold":true}]
execute if score @s ec.sk_impact matches 100 run scoreboard players set @s ec.sk_impact 0
execute if score @s ec.sk_impact matches 0 run return 0

# === SHATTER (75-99) ===
execute if score @s ec.sk_impact matches 75..99 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..7] run damage @s 6 minecraft:mob_attack
execute if score @s ec.sk_impact matches 75..99 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..7] run effect give @s slowness 5 1 false
execute if score @s ec.sk_impact matches 75..99 at @s run particle explosion ~ ~0.5 ~ 3.5 0.3 3.5 0.1 20
execute if score @s ec.sk_impact matches 75..99 at @s run playsound minecraft:entity.generic.explode player @a[distance=..25] ~ ~ ~ 0.8 0.5
execute if score @s ec.sk_impact matches 75..99 run title @s actionbar [{"text":"Shatter!","color":"light_purple","bold":true}]
execute if score @s ec.sk_impact matches 75..99 run scoreboard players set @s ec.sk_impact 0
execute if score @s ec.sk_impact matches 0 run return 0

# === QUAKE (50-74) ===
execute if score @s ec.sk_impact matches 50..74 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run damage @s 4 minecraft:mob_attack
execute if score @s ec.sk_impact matches 50..74 at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..5] run effect give @s slowness 3 0 false
execute if score @s ec.sk_impact matches 50..74 at @s run particle explosion ~ ~0.5 ~ 2.5 0.3 2.5 0.1 15
execute if score @s ec.sk_impact matches 50..74 at @s run playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 0.6 0.7
execute if score @s ec.sk_impact matches 50..74 run title @s actionbar [{"text":"Quake!","color":"aqua","bold":true}]
execute if score @s ec.sk_impact matches 50..74 run scoreboard players set @s ec.sk_impact 0
execute if score @s ec.sk_impact matches 0 run return 0

# === TREMOR (25-49) ===
execute at @s as @e[type=!player,type=!item,type=!experience_orb,distance=..3] at @s facing entity @p feet run tp @s ^ ^ ^-1.0
execute at @s run particle explosion ~ ~0.5 ~ 1.5 0.2 1.5 0.1 10
execute at @s run playsound minecraft:entity.generic.explode player @a[distance=..15] ~ ~ ~ 0.4 0.9
title @s actionbar [{"text":"Tremor!","color":"green","bold":true}]
scoreboard players set @s ec.sk_impact 0

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
