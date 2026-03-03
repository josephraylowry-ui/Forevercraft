# Lightning Smash — Mjolnir (Rare)
# Summon lightning at target (Striker: chains to 2 at 50+ Impact, 4 at 75+ Impact)
advancement revoke @s only evercraft:artifacts/abilities/lightning_smash_trigger

# === STRIKER IMPACT SCALING ===
# 75+ Impact: chain to 4 nearby targets
execute if score @s ec.sk_impact matches 75.. at @s at @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,type=!item,distance=..10,limit=4,sort=nearest,nbt={hurt_time:0s}] at @s run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 75.. at @s run particle electric_spark ~ ~1 ~ 1 0.5 1 0.2 30
execute if score @s ec.sk_impact matches 75.. run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.8 0.8
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: chain to 2 nearby targets
execute if score @s ec.sk_impact matches 50..74 at @s at @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 at @s as @e[type=!player,type=!item,distance=..10,limit=2,sort=nearest,nbt={hurt_time:0s}] at @s run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 at @s run particle electric_spark ~ ~1 ~ 0.8 0.5 0.8 0.2 20
execute if score @s ec.sk_impact matches 50..74 run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.6 0.9
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: single target
execute at @s at @e[type=!player,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon lightning_bolt ~ ~ ~
execute at @s run particle electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.5 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
