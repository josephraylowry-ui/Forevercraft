# Accessories System - Load Function
# Bootstraps the self-scheduling tick system

# Mob Vision cooldown scoreboards (activation-based, not passive)
scoreboard objectives add ec.monocle_cd dummy "Monocle Cooldown"

# Dream Aegis iframe cooldown
scoreboard objectives add ec.aegis_cd dummy "Dream Aegis Cooldown"

# Armor ability scoreboards
scoreboard objectives add ec.double_jump_cd dummy "Double Jump Cooldown"
scoreboard objectives add ec.seers_cd dummy "Seers Compass Cooldown"
scoreboard objectives add ec.wecho_cd dummy "Wardens Echo Cooldown"
scoreboard objectives add ec.ceye_cd dummy "Claudes Eye Cooldown"
scoreboard objectives add ec.wtotem_cd dummy "Warden Totem Cooldown"
scoreboard objectives add ec.codex_cd dummy "Codex Cooldown"

# === ACCESSORY TOGGLE SYSTEM (F8) ===
# Sneak timer and cooldown for toggle detection
scoreboard objectives add ec.t_sneak dummy "Toggle Sneak Timer"
scoreboard objectives add ec.t_cooldown dummy "Toggle Cooldown"

# Per-artifact toggle state (0 = ON default, 1 = OFF)
scoreboard objectives add ec.t_pebble dummy "Toggle Pebble"
scoreboard objectives add ec.t_traveler dummy "Toggle Traveler"
scoreboard objectives add ec.t_wcompass dummy "Toggle W.Compass"
scoreboard objectives add ec.t_glowpend dummy "Toggle Glowpend"
scoreboard objectives add ec.t_irontali dummy "Toggle IronTali"
scoreboard objectives add ec.t_feather dummy "Toggle Feather"
scoreboard objectives add ec.t_dring dummy "Toggle D.Ring"
scoreboard objectives add ec.t_rwatch dummy "Toggle RuinWatch"
scoreboard objectives add ec.t_heart dummy "Toggle Heartstone"
scoreboard objectives add ec.t_storm dummy "Toggle Storm"
scoreboard objectives add ec.t_merchant dummy "Toggle Merchant"
scoreboard objectives add ec.t_healer dummy "Toggle Healer"
scoreboard objectives add ec.t_wind dummy "Toggle WindChime"
scoreboard objectives add ec.t_angler dummy "Toggle Angler"
scoreboard objectives add ec.t_phoenix dummy "Toggle Phoenix"
scoreboard objectives add ec.t_undying dummy "Toggle Undying"
scoreboard objectives add ec.t_voidhrt dummy "Toggle VoidHeart"
scoreboard objectives add ec.t_phantom dummy "Toggle Phantom"
scoreboard objectives add ec.t_sculkhrt dummy "Toggle SculkHrt"
scoreboard objectives add ec.t_redhrt dummy "Toggle RedHeart"

# Start the accessory tick loop
schedule function evercraft:artifacts/accessories/tick 1s

# Start the worn armor ability tick loop
schedule function evercraft:artifacts/accessories/worn_tick 1s

# Start the double jump tick loop (fast, 2 ticks for responsiveness)
schedule function evercraft:artifacts/abilities/double_jump_tick 2t
