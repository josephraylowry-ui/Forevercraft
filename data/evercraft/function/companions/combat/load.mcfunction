# Pet Combat System — Initialization
# Called from init.mcfunction on datapack load

# Whistle cooldown (ticks remaining before next attack)
scoreboard objectives add pet.wcd dummy "Whistle Cooldown"

# Combat XP and level (loaded from pet entity, persisted on write-back)
scoreboard objectives add pet.cxp dummy "Pet Combat XP"
scoreboard objectives add pet.clvl dummy "Pet Combat Level"

# Constants for damage calculation (x100 precision)
# Tier base damage (half-hearts x100): Common=200, Uncommon=300, Rare=400, Ornate=500, Exquisite=700, Mythical=1000
# Tier per-level scaling (x100): Common=4, Uncommon=6, Rare=8, Ornate=10, Exquisite=12, Mythical=15
scoreboard players set #pc_10000 ec.const 10000
scoreboard players set #10 ec.const 10
scoreboard players set #5 ec.const 5

# Bootstrap combat tick (1s self-schedule)
schedule function evercraft:companions/combat/tick 1s
