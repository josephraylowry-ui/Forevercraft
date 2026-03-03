# Dancer Artifacts — Per-Tick Processing
# Manages dual-wield state, Haste II, and flurry auto-swing

# === STEP 1: Validate — remove if mainhand no longer has dancer gauntlet ===
execute as @a[tag=ec.dn_active] unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] run function evercraft:artifacts/dancer/remove

# === STEP 2: Update dual-wield state ===
# Gained offhand gauntlet
execute as @a[tag=ec.dn_active] if items entity @s weapon.offhand #minecraft:swords[custom_data~{dancer:true}] if score @s ec.dn_dual matches 0 run function evercraft:artifacts/dancer/gain_dual
# Lost offhand gauntlet
execute as @a[tag=ec.dn_active] unless items entity @s weapon.offhand #minecraft:swords[custom_data~{dancer:true}] if score @s ec.dn_dual matches 1 run function evercraft:artifacts/dancer/lose_dual

# === STEP 3: Haste II for dual-wielders (refreshed each tick, expires naturally) ===
execute as @a[tag=ec.dn_active,scores={ec.dn_dual=1}] run effect give @s haste 2 1 true

# === STEP 4: Flurry tick (auto-swing during active flurry) ===
execute as @a[tag=ec.dn_active,scores={ec.dn_flurry=1..}] at @s anchored eyes run function evercraft:artifacts/dancer/flurry_tick
