# === ETERNAL CODEX SYSTEM ===
function evercraft:ecodex/load


# === PHOENIX CODEX SYSTEM ===
function evercraft:phoenix/load


# === CODEX OF EVERYTHING SPECTATOR SYSTEM ===
scoreboard objectives add ec.codex_spec_cd dummy "Codex Spectator Cooldown"
scoreboard objectives add ec.codex_spec_time dummy "Codex Spectator Timer"
scoreboard objectives add ec.codex_ret_x dummy "Codex Return X"
scoreboard objectives add ec.codex_ret_y dummy "Codex Return Y"
scoreboard objectives add ec.codex_ret_z dummy "Codex Return Z"
scoreboard objectives add ec.codex_ret_dim dummy "Codex Return Dimension"
scoreboard players set #72000 ec.const 72000


# === DREAM SURGE EVENT SYSTEM ===
# #ec_event_active and #ec_event_timer use ec.var (dummy already created above)
# No new objectives needed — state tracked via fake player scores in ec.var


# === MYTHICAL TOOLS ===
function evercraft:artifacts/mythical_tools/load
schedule function evercraft:artifacts/mythical_tools/magnet 10t
schedule function evercraft:mob_crates/tick 10t


# === ARTIFACT TRANSMUTATION SYSTEM ===
function evercraft:transmute/load


# === RUNEFORGE SYSTEM ===
function evercraft:glyphforge/load
schedule function evercraft:glyphforge/effects/tick 1s


# === HEALER ARTIFACT SYSTEM ===
function evercraft:artifacts/healer/load


# === CLASS AFFINITY SYSTEM ===
function evercraft:affinity/load

# === CODEX SYSTEM ===
scoreboard objectives add ec.codex trigger "Forevercraft Codex"
scoreboard objectives add ec.artifact_count dummy "Artifacts Collected"
scoreboard objectives add ec.has_artifacts dummy "Has Artifacts"
scoreboard objectives add ec.codex_use dummy "Used Codex"
scoreboard players enable @a ec.codex

# Safety net: give codex to players with artifacts who lost theirs, and migrate old codex items
function evercraft:codex/migrate



# === CODEX GLOW SYSTEMS ===
scoreboard objectives add ec.mob_glow dummy
scoreboard objectives add ec.block_glow dummy



# === DRAGON'S SPITE CONSTANTS ===
scoreboard objectives add ec.health dummy
scoreboard objectives add ec.max_health dummy
scoreboard objectives add ec.health_pct dummy
scoreboard players set #100 ec.const 100
scoreboard players set #2 ec.const 2
scoreboard players set #3 ec.const 3
scoreboard players set #-1 ec.const -1



# === ACCESSORY COOLDOWNS ===
scoreboard objectives add ec.monocle_cd dummy "Monocle Cooldown"
scoreboard objectives add ec.compass_cd dummy "Compass Cooldown"
scoreboard objectives add ec.echo_cd dummy "Echo Cooldown"



# === GENERIC ABILITY COOLDOWNS ===
scoreboard objectives add ec.lightning_cd dummy "Lightning Strike Cooldown"
scoreboard players set #60 ec.const 60
scoreboard players set #240 ec.const 240



# === HARMONIZATION SYSTEM ===
# harmonize/load is registered in load.json — no need to call here
# function evercraft:harmonize/load



# === SHIELD TANK SYSTEM ===
function evercraft:artifacts/shields/load



# === ESSENTIALS SATCHEL SYSTEM ===
function evercraft:satchel/load



# === ARTIFACT PATINA SYSTEM ===
function evercraft:patina/load



# === ARTIFACT CONSTELLATIONS SYSTEM ===
function evercraft:constellations/load



# === ARTIFACT KILL TRACKER ===
# Uses storage: evercraft:artifact_kills {<player>:{<artifact_id>:count}}

