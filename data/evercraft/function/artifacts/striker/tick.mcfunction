# Striker Mace System — Per-Tick Processing
# Called from main tick.mcfunction when any ec.sk_active player exists

# === STEP 1: Validate — remove if mainhand no longer has striker mace ===
execute as @a[tag=ec.sk_active] unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] run function evercraft:artifacts/striker/remove

# === STEP 2: Sentinel subclass state ===
# Gained shield in offhand
execute as @a[tag=ec.sk_active,tag=!ec.sk_sentinel] if items entity @s weapon.offhand minecraft:shield run function evercraft:artifacts/striker/sentinel_detect
# Lost shield from offhand
execute as @a[tag=ec.sk_active,tag=ec.sk_sentinel] unless items entity @s weapon.offhand minecraft:shield run function evercraft:artifacts/striker/sentinel_remove

# === STEP 3: Impact building — Falling ===
# +1 per tick while falling (fall_distance > 3 blocks)
execute as @a[tag=ec.sk_active] store result score @s ec.sk_fall run data get entity @s fall_distance 10
execute as @a[tag=ec.sk_active] if score @s ec.sk_fall matches 30.. run scoreboard players add @s ec.sk_impact 1

# === STEP 4: Impact cap enforcement ===
execute as @a[tag=ec.sk_active,tag=!ec.sk_sentinel] if score @s ec.sk_impact matches 101.. run scoreboard players set @s ec.sk_impact 100
execute as @a[tag=ec.sk_active,tag=ec.sk_sentinel] if score @s ec.sk_impact matches 76.. run scoreboard players set @s ec.sk_impact 75

# === STEP 5: Sentinel Resistance passive ===
execute as @a[tag=ec.sk_sentinel] if score @s ec.sk_tier matches ..5 run effect give @s resistance 2 0 true
execute as @a[tag=ec.sk_sentinel] if score @s ec.sk_tier matches 6 run effect give @s resistance 2 1 true

# === STEP 6: Combat freshness timer decrement ===
scoreboard players remove @a[tag=ec.sk_active,scores={ec.sk_combat=1..}] ec.sk_combat 1
