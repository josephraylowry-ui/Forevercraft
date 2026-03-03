# ============================================================
# ACHIEVEMENTS — Secret Achievement Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# Secret achievements are hidden in the advancement tab until earned
# Slow daylight: uses #visual_time ec.var (0-24000)
# ============================================================

# --- Bedrock Breaker (Common): Mine at Y=-60 or below ---
execute as @a at @s if predicate evercraft:achievements/at_bedrock unless entity @s[advancements={evercraft:alternate/secrets/bedrock_breaker=true}] run advancement grant @s only evercraft:alternate/secrets/bedrock_breaker

# --- Speed Demon (Uncommon): Sprint 100,000 blocks (10,000,000 cm) ---
execute as @a[scores={ach.adj_sprint=10000000..}] unless entity @s[advancements={evercraft:alternate/secrets/speed_demon=true}] run advancement grant @s only evercraft:alternate/secrets/speed_demon

# --- Sky Walker (Uncommon): Place block above Y=300 ---
# Detected via placed_block advancement trigger — see secrets/detect_sky_walker.json

# --- Close Call (Uncommon): Half a heart or less ---
execute as @a[nbt={Health:1.0f}] unless entity @s[advancements={evercraft:alternate/secrets/close_call=true}] run advancement grant @s only evercraft:alternate/secrets/close_call

# --- The Completionist (Rare): 100 total achievements ---
execute as @a[scores={ach.total=100..}] unless entity @s[advancements={evercraft:alternate/secrets/completionist=true}] run advancement grant @s only evercraft:alternate/secrets/completionist

# --- Deep Diver (Rare): 50,000 blocks underwater (5,000,000 cm) ---
execute as @a[scores={ach.adj_swim=5000000..}] unless entity @s[advancements={evercraft:alternate/secrets/deep_diver=true}] run advancement grant @s only evercraft:alternate/secrets/deep_diver

# --- Night Shift (Rare): 10 hours of in-game night play (720,000 ticks) ---
execute as @a[scores={ach.night_ticks=720000..}] unless entity @s[advancements={evercraft:alternate/secrets/night_shift=true}] run advancement grant @s only evercraft:alternate/secrets/night_shift

# --- Potion Brewer (Rare): 100 brewing stand interactions ---
execute as @a[scores={ach.adj_brew=100..}] unless entity @s[advancements={evercraft:alternate/secrets/potion_brewer=true}] run advancement grant @s only evercraft:alternate/secrets/potion_brewer

# --- Insomniac (Ornate): 5 in-game days without sleeping ---
execute as @a[scores={ach.no_sleep_days=5..}] unless entity @s[advancements={evercraft:alternate/secrets/insomniac=true}] run advancement grant @s only evercraft:alternate/secrets/insomniac

# --- Enchanting Master (Ornate): 50 items enchanted ---
execute as @a[scores={ach.adj_ench=50..}] unless entity @s[advancements={evercraft:alternate/secrets/enchanting_master=true}] run advancement grant @s only evercraft:alternate/secrets/enchanting_master

# --- Trade Mogul (Exquisite): 1000 trades ---
execute as @a[scores={ach.adj_trade=1000..}] unless entity @s[advancements={evercraft:alternate/secrets/trade_mogul=true}] run advancement grant @s only evercraft:alternate/secrets/trade_mogul

# --- Crate Connoisseur (Exquisite): At least 1 of each crate type ---
execute as @a[scores={ach.crates_mining=1..,ach.crates_fishing=1..,ach.crates_harvest=1..,ach.crates_mob=1..,ach.crates_structure=1..}] unless entity @s[advancements={evercraft:alternate/secrets/crate_connoisseur=true}] run advancement grant @s only evercraft:alternate/secrets/crate_connoisseur

# --- Evercraft Veteran (Mythical): 500 total achievements ---
execute as @a[scores={ach.total=500..}] unless entity @s[advancements={evercraft:alternate/secrets/evercraft_veteran=true}] run advancement grant @s only evercraft:alternate/secrets/evercraft_veteran

# --- Pet Collector Deluxe (Ornate): Adopt 20+ pets ---
execute as @a[scores={ach.pets_owned=20..}] unless entity @s[advancements={evercraft:alternate/secrets/pet_collector_deluxe=true}] run advancement grant @s only evercraft:alternate/secrets/pet_collector_deluxe

# --- Night time tracking: increment ach.night_ticks during night ---
# Night is visual_time 13000..23000
# This runs every 5s (100 ticks), so add 100 ticks per check during night
execute if score #visual_time ec.var matches 13000..23000 as @a run scoreboard players add @s ach.night_ticks 100

# --- No-sleep day tracking: increment at dawn ---
# Dawn fires once per day change: early daytime (0-99)
# NOTE: Sleep change detection moved to achievements/tick (before baseline subtraction)
execute store result score #sec_time ec.var run time query daytime
execute if score #sec_time ec.var matches 0..99 as @a run scoreboard players add @s ach.no_sleep_days 1

# NOTE: The following secrets use inline/trigger detection (not scheduled checks):
# - One Punch: detect advancement trigger (achievements/detect/one_punch_kill.json)
# - Full Moon Madness: hooked in luck_buffs/dawn_reset.mcfunction
# - Surge Surfer: hooked in event/roll_event_crate_{fish,harvest,mob_crate}.mcfunction
# - The Chosen One: detect advancement trigger (achievements/detect/lightning_strike.json)
# - Sky Walker: detect advancement trigger (achievements/detect/sky_walker.json)
# - Dream Weaver: hooked in dreams/check.mcfunction
