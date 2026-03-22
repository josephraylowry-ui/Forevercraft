# === PET COMBAT SYSTEM ===
function evercraft:companions/combat/load
schedule function evercraft:companions/handler/schedule/timer_slow 60s


# === PET COMBAT SYSTEMS ===
schedule function evercraft:cats/combat_tick 20t replace
schedule function evercraft:parrots/combat_tick 20t replace
schedule function evercraft:horses/combat_tick 20t replace

# === COMPANION MEMORIES SYSTEM ===
function evercraft:companions/memories/load



# === PET RELATIONSHIP BONDED ===
scoreboard objectives add ec.pet_bonded dummy "Pet Bonded"



# === COMPANION EVOLUTION SYSTEM ===
function evercraft:companion_evolution/load



# === MOUNT TRAINING & SKYRIFT DERBY ===
function evercraft:mount_training/load

