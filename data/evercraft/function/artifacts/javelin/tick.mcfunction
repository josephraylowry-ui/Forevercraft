# Javelin Class — Per-Tick Loop
# Run when any player has ec.jv_active tag

# === STEP 1: Validate still holding javelin trident ===
execute as @a[tag=ec.jv_active] unless items entity @s weapon.mainhand minecraft:trident[custom_data~{javelin:true}] run function evercraft:artifacts/javelin/remove

# === STEP 2: Hoplite state refresh (check offhand shield) ===
execute as @a[tag=ec.jv_active] run function evercraft:artifacts/javelin/hoplite_check

# === STEP 3: Decrement momentum timers (per-tick) ===
scoreboard players remove @a[tag=ec.jv_active,scores={ec.jv_thrown=1..}] ec.jv_thrown 1
scoreboard players remove @a[tag=ec.jv_active,scores={ec.jv_melee=1..}] ec.jv_melee 1

# === STEP 4: Decrement Counter Thrust window (per-tick) ===
scoreboard players remove @a[tag=ec.jv_active,scores={ec.jv_counter=1..}] ec.jv_counter 1

# === STEP 5: Hoplite passive — Resistance I refresh ===
execute as @a[tag=ec.jv_active,scores={ec.jv_hoplite=1}] run effect give @s resistance 3 0 true
