# Javelin Class — On Thrown Hit
# Triggered by player_hurt_entity advancement (direct_entity = trident)

# Re-arm advancement
advancement revoke @s only evercraft:artifacts/javelin/thrown_hit

# Verify player is javelin-active
execute unless entity @s[tag=ec.jv_active] run return 0

# === MOMENTUM: Grant Strike Momentum (5s = 100 ticks) ===
scoreboard players set @s ec.jv_melee 100

# === SPEED BOOST (non-Hoplite only) ===
execute unless score @s ec.jv_hoplite matches 1 run effect give @s speed 2 0 true

# === THROW MOMENTUM BONUS (thrown hit during ec.jv_thrown window) ===
# Tiers 2-4: +2 bonus damage, Tiers 5-6: +3 bonus damage
execute if score @s ec.jv_thrown matches 1.. if score @s ec.jv_tier matches 2..4 at @s run damage @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] 2 minecraft:generic
execute if score @s ec.jv_thrown matches 1.. if score @s ec.jv_tier matches 5..6 at @s run damage @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] 3 minecraft:generic

# === COOLDOWN CHECK — skip ability if on cooldown ===
execute if score @s ec.jv_cd matches 1.. run return 0

# === ROUTE TO ARTIFACT-SPECIFIC THROWN ABILITY ===
execute if score @s ec.jv_id matches 1 run function evercraft:artifacts/javelin/thrown/norroen
execute if score @s ec.jv_id matches 2 run function evercraft:artifacts/javelin/thrown/ancient
execute if score @s ec.jv_id matches 3 run function evercraft:artifacts/javelin/thrown/royal
execute if score @s ec.jv_id matches 4 run function evercraft:artifacts/javelin/thrown/fantasy
execute if score @s ec.jv_id matches 5 run function evercraft:artifacts/javelin/thrown/shuriken
execute if score @s ec.jv_id matches 6 run function evercraft:artifacts/javelin/thrown/crucible
execute if score @s ec.jv_id matches 7 run function evercraft:artifacts/javelin/thrown/mjolnir
execute if score @s ec.jv_id matches 8 run function evercraft:artifacts/javelin/thrown/ninja
execute if score @s ec.jv_id matches 9 run function evercraft:artifacts/javelin/thrown/master_bolt
