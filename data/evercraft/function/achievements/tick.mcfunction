# ============================================================
# ALTERNATE ADVANCEMENTS — Milestone Checker (5s schedule)
# Checks scoreboard thresholds and grants achievements
# ============================================================

# Self-schedule every 5 seconds
schedule function evercraft:achievements/tick 100t

# Only run if players online
execute unless entity @a run return 0

# Revoke raid victory advancement when Hero of the Village effect wears off
# (moved from per-tick to 5s schedule — NBT check on active_effects is expensive)
execute as @a[advancements={evercraft:village/raid_victory=true}] unless entity @s[nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run advancement revoke @s only evercraft:village/raid_victory

# --- Global init cooldown (gives vanilla stat objectives time to repopulate after
#     fix_corrupted_stats or standalone revoke_all). Decrements once per 5s cycle. ---
execute if score #ach_init_cd ec.var matches 1.. run scoreboard players remove #ach_init_cd ec.var 1
execute if score #ach_init_cd ec.var matches 1.. run return 0

# --- Sleep change detection + stat sync + derived counters ---
# OPT: Batched into per-player function (11 @a scans → 1)
execute as @a at @s run function evercraft:achievements/sync/player_stats

# --- Auto-initialize baselines for players who haven't had them set ---
# Without baselines, raw vanilla stat totals (millions of ticks/cm) pass through
# and fire all threshold-based achievements at once.
# Detect uninitialized players BEFORE init (init sets base_set=1, can't check after)
scoreboard players set #ach_init ec.var 0
execute as @a unless score @s ach.base_set matches 1 run scoreboard players set #ach_init ec.var 1
execute as @a unless score @s ach.base_set matches 1 run function evercraft:achievements/init_baselines
# Skip checks for 2 extra cycles after init — vanilla stat objectives may not have
# repopulated yet (e.g., after fix_corrupted_stats or /reload). The cooldown gives
# Minecraft time to sync stat values before baselines are used for comparisons.
execute if score #ach_init ec.var matches 1 run scoreboard players set #ach_init_cd ec.var 2
execute if score #ach_init ec.var matches 1 run return 0

# --- Copy vanilla stats to adjusted scores, then subtract baselines ---
# OPT: Batched into per-player function (26 @a scans → 1)
execute as @a run function evercraft:achievements/sync/player_adjust

# Check each category's milestones (all scores are now baseline-adjusted)
function evercraft:achievements/check/artifacts
function evercraft:achievements/check/pets
function evercraft:achievements/check/quests
function evercraft:achievements/check/crates
function evercraft:achievements/check/combat
function evercraft:achievements/check/advantage
function evercraft:achievements/check/fishing
function evercraft:achievements/check/mining
function evercraft:achievements/check/exploration
function evercraft:achievements/check/professions
function evercraft:achievements/check/armor
function evercraft:achievements/check/statistics
function evercraft:achievements/check/secrets
function evercraft:achievements/check/meta
function evercraft:achievements/check/world_events

# --- New system achievement checks ---
function evercraft:achievements/check/bosses
function evercraft:achievements/check/dungeons
function evercraft:achievements/check/cooking_ach
function evercraft:achievements/check/lore_ach
function evercraft:achievements/check/party_ach
function evercraft:achievements/check/housing_ach
function evercraft:achievements/check/journal_ach
function evercraft:achievements/check/satchel_ach
function evercraft:achievements/check/runeforge_ach
function evercraft:achievements/check/transmute_ach
function evercraft:achievements/check/forage_prospect
function evercraft:achievements/check/elytra_ach
function evercraft:achievements/check/cross_system

# Enable trigger for all players (must be re-enabled after each use)
execute as @a run scoreboard players enable @s ach.progress

# Handle progress trigger
execute as @a[scores={ach.progress=1..}] run function evercraft:achievements/debug/check_progress

# Handle prestige token usage (carrot_on_a_stick with prestige_token tag)
execute as @a[scores={ec.prestige_use=1..}] run function evercraft:achievements/prestige/tick
