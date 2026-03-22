# === DREAM RATE MILESTONES ===
scoreboard objectives add ec.dr_peak_ms dummy "DR Peak Milestone"
scoreboard players set #200 ec.const 200



# === DREAMS (DREAM RATE CHECK) SYSTEM ===
scoreboard objectives add ec.dreams trigger "Check Dreams (Dream Rate)"
scoreboard objectives add ec.dr_history trigger "Dream Rate History"
scoreboard objectives add ec.temp dummy
scoreboard objectives add ec.last_day dummy "Last Day Online"

# Briefing event log counter (preserves across /reload)
execute unless score #brief_count ec.var matches 0.. run scoreboard players set #brief_count ec.var 0

scoreboard objectives add ec.crystal_count dummy
scoreboard objectives add ec.droppings_count dummy
scoreboard objectives add ec.mushroom_count dummy
scoreboard objectives add ec.chorus_count dummy
scoreboard players enable @a ec.dreams
scoreboard players enable @a ec.dr_history



# === DREAM RATE CONSUMABLE ITEMS (S76 — 10 new permanent DR items) ===
scoreboard objectives add ec.patron_dream_count dummy
scoreboard objectives add ec.quill_count dummy
scoreboard objectives add ec.thread_count dummy
scoreboard objectives add ec.tome_count dummy
scoreboard objectives add ec.codex_page_count dummy
scoreboard objectives add ec.lure_count dummy
scoreboard objectives add ec.geode_count dummy
scoreboard objectives add ec.seed_count dummy
scoreboard objectives add ec.ember_count dummy
scoreboard objectives add ec.map_count dummy
scoreboard objectives add ec.dream_ore_count dummy
scoreboard objectives add ec.dream_relic_count dummy
scoreboard objectives add ec.dream_petal_count dummy



# === DREAM ECHOES SYSTEM ===
function evercraft:dream_echoes/load

