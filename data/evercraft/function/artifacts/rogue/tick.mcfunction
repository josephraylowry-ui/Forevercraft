# Rogue Artifacts — Per-Tick Processing
# Manages auto-swing timer and fires attacks when timer expires

# === STEP 1: Verify active players still hold a rogue dagger ===
# If they swapped away, clear state and remove tag
execute as @a[tag=ec.rg_active] unless items entity @s weapon.mainhand *[custom_data~{rogue:true}] run scoreboard players set @s ec.rg_swing 0
execute as @a[tag=ec.rg_active] unless items entity @s weapon.mainhand *[custom_data~{rogue:true}] run scoreboard players set @s ec.rg_tier 0
execute as @a[tag=ec.rg_active] unless items entity @s weapon.mainhand *[custom_data~{rogue:true}] run scoreboard players set @s ec.rg_dual 0
execute as @a[tag=ec.rg_active] unless items entity @s weapon.mainhand *[custom_data~{rogue:true}] run tag @s remove ec.rg_active

# === STEP 2: Update dual wield state for active rogues ===
execute as @a[tag=ec.rg_active] if items entity @s weapon.offhand *[custom_data~{rogue:true}] run scoreboard players set @s ec.rg_dual 1
execute as @a[tag=ec.rg_active] unless items entity @s weapon.offhand *[custom_data~{rogue:true}] run scoreboard players set @s ec.rg_dual 0

# === STEP 3: Decrement swing timer ===
scoreboard players remove @a[tag=ec.rg_active,scores={ec.rg_swing=1..}] ec.rg_swing 1

# === STEP 4: Fire swing when timer hits 0 ===
execute as @a[tag=ec.rg_active,scores={ec.rg_swing=..0}] at @s anchored eyes run function evercraft:artifacts/rogue/swing
