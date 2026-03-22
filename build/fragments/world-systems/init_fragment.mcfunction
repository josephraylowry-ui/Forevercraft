# === WORLD BOSS SYSTEM ===
function evercraft:bosses/load


# === FORAGING BUSH SYSTEM ===
function evercraft:forage/load


# === ORE NODE SYSTEM ===
function evercraft:prospect/load

# === MOON PHASE CHECK SYSTEM ===
scoreboard objectives add ec.moon trigger "Moon Phase Info"
scoreboard players enable @a ec.moon



# === BIOME AFFINITY SYSTEM ===
scoreboard objectives add ec.biome_id dummy "Biome ID"
scoreboard objectives add ec.biome_prev dummy "Previous Biome ID"
scoreboard objectives add ec.biome_last dummy "Biome Cache Time"



# === WORLD FEATURES (Sapling Replant, Crop Replant, Timber, Birch Strip) ===
scoreboard objectives add ec.sapling_age dummy "Sapling Ground Age"
scoreboard objectives add ec.sapling_try dummy "Sapling Plant Attempts"
schedule function evercraft:world/sapling_replant/tick 5s
schedule function evercraft:world/crop_replant/tick 2s
schedule function evercraft:world/timber/tick 2t



# === VILLAGER DEATH NOTIFICATIONS (S69) ===
schedule function evercraft:mobs/village/death/tick 5s



# === RPG HEALTH BAR (N10, S69) ===
scoreboard objectives add ec.healthbar trigger "Toggle Health Bar"
scoreboard players enable @a ec.healthbar



# === CAVE DARKNESS SYSTEM (S71) ===
schedule function evercraft:cave_darkness/tick 1s



# === SEASONAL EVENTS CALENDAR ===
function evercraft:calendar/load



# === SPONTANEOUS WORLD EVENTS ===
function evercraft:world_events/load



# === HARMONIC CONVERGENCE OVERLAY ===
function evercraft:convergence/load



# === UNDERGROUND BIOME ENCOUNTERS ===
function evercraft:encounters/load



# === BIOME MASTERY SYSTEM ===
function evercraft:biome_mastery/load



# === WEATHER OMENS (pre-event warning system) ===
function evercraft:omens/load



# === BIOME TRANSITION DETECTION (ambient sounds + milestone tracking) ===
schedule function evercraft:biome/tick 5s



# === NIGHT TERRORS (New Moon mini-bosses) ===
function evercraft:night_terrors/load



# === SEASONAL SYSTEM ===
scoreboard objectives add ec.last_scorch dummy "Last Scorch Day"
function evercraft:seasons/load



# === REAPER SYSTEM (Morality — Infamy/Renown) ===
function evercraft:reaper/load

