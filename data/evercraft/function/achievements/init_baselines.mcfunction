# ============================================================
# ACHIEVEMENTS — Auto-Initialize Baselines
# Called once per player when ach.base_set != 1
# Captures current vanilla stat values as baselines so achievements
# count from 0 instead of using raw lifetime totals.
# Without this, raw vanilla stats (millions of ticks/cm) pass through
# baseline subtraction as-is and fire all threshold achievements at once.
# ============================================================

# === Achievement stat baselines (vanilla auto-populated scoreboards) ===
scoreboard players operation @s ach.base_play = @s ach.play_ticks
scoreboard players operation @s ach.base_walk = @s ach.walk_cm
scoreboard players operation @s ach.base_jump = @s ach.jumps
scoreboard players operation @s ach.base_sprint = @s ach.sprint_cm
scoreboard players operation @s ach.base_trade = @s ach.trades_done
scoreboard players operation @s ach.base_sleep = @s ach.sleeps
scoreboard players operation @s ach.base_chest = @s ach.chests_opened
scoreboard players operation @s ach.base_swim = @s ach.swim_cm
scoreboard players operation @s ach.base_fall = @s ach.fall_cm
scoreboard players operation @s ach.base_flint = @s ach.flint_used
scoreboard players operation @s ach.base_map = @s ach.maps_crafted
scoreboard players operation @s ach.base_brew = @s ach.brew_count
scoreboard players operation @s ach.base_ench = @s ach.enchant_count

# === Advantage stat baselines (vanilla-synced via sync_stats) ===
scoreboard players operation @s adv.base_walk = @s adv.walk_cm
scoreboard players operation @s adv.base_crouch = @s adv.crouch_cm
scoreboard players operation @s adv.base_fish = @s adv.fish_ct
scoreboard players operation @s adv.base_mobs = @s adv.mob_kills
scoreboard players operation @s adv.base_mine = @s mt.total
# Smelting baseline: sum all furnace types
scoreboard players operation @s adv.base_smelt = @s adv.furnace_ct
scoreboard players operation @s adv.base_smelt += @s adv.blast_ct
scoreboard players operation @s adv.base_smelt += @s adv.smoker_ct

# === Revoke incorrectly-granted stat-based achievements ===
# Only revoking achievements that use vanilla-stat baselines.
# Achievements using manually-tracked stats (food_eaten, blocks_placed, crops_harvested) are NOT revoked.

# Play time milestones (ach.play_ticks — baseline-dependent)
advancement revoke @s only evercraft:alternate/statistics/common/play_one_hour
advancement revoke @s only evercraft:alternate/statistics/uncommon/play_ten_hours
advancement revoke @s only evercraft:alternate/statistics/rare/play_fifty_hours
advancement revoke @s only evercraft:alternate/statistics/ornate/play_hundred_hours
advancement revoke @s only evercraft:alternate/statistics/exquisite/play_five_hundred_hours
advancement revoke @s only evercraft:alternate/statistics/mythical/play_thousand_hours

# Walk distance milestones (ach.walk_cm — baseline-dependent)
advancement revoke @s only evercraft:alternate/statistics/common/walk_ten_thousand
advancement revoke @s only evercraft:alternate/statistics/uncommon/walk_hundred_thousand
advancement revoke @s only evercraft:alternate/statistics/rare/walk_million

# Jump, sprint, trades, sleep, chests, swim, fall, flint, maps (all baseline-dependent)
advancement revoke @s only evercraft:alternate/statistics/rare/jump_hundred_thousand
advancement revoke @s only evercraft:alternate/statistics/common/speed_runner
advancement revoke @s only evercraft:alternate/statistics/uncommon/social_butterfly
advancement revoke @s only evercraft:alternate/statistics/uncommon/nomad
advancement revoke @s only evercraft:alternate/statistics/rare/treasure_hunter
advancement revoke @s only evercraft:alternate/statistics/ornate/aquatic_explorer
advancement revoke @s only evercraft:alternate/statistics/exquisite/fall_survivor
advancement revoke @s only evercraft:alternate/statistics/rare/pyromaniac
advancement revoke @s only evercraft:alternate/statistics/ornate/cartographer

# Mining — blocks_mined milestones (adv.stat_mine — baseline-dependent)
# crops_harvested achievements NOT revoked (manually tracked, no baseline issue)
advancement revoke @s only evercraft:alternate/mining/common/first_ore
advancement revoke @s only evercraft:alternate/mining/common/hundred_blocks
advancement revoke @s only evercraft:alternate/mining/common/five_hundred_blocks
advancement revoke @s only evercraft:alternate/mining/uncommon/thousand_blocks
advancement revoke @s only evercraft:alternate/mining/uncommon/five_thousand_blocks
advancement revoke @s only evercraft:alternate/mining/rare/ten_thousand_blocks
advancement revoke @s only evercraft:alternate/mining/rare/twenty_thousand_blocks
advancement revoke @s only evercraft:alternate/mining/ornate/fifty_thousand_blocks
advancement revoke @s only evercraft:alternate/mining/ornate/hundred_thousand_blocks
advancement revoke @s only evercraft:alternate/mining/exquisite/two_hundred_thousand_blocks
advancement revoke @s only evercraft:alternate/mining/exquisite/five_hundred_thousand_blocks
advancement revoke @s only evercraft:alternate/mining/mythical/million_blocks

# === Mark baselines as initialized ===
scoreboard players set @s ach.base_set 1

tellraw @s [{text:"[Achievements] ",color:"gold"},{text:"Stat baselines initialized — milestones now track from this point forward.",color:"green"}]
