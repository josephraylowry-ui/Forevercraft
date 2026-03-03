# Achievement Stat Sync — Per-player (runs as @s = player, at @s)
# OPT: Consolidates 11 @a scans into 1 function call

# Sleep change detection (must run BEFORE baseline subtraction, needs raw ach.sleeps)
execute unless score @s ach.sleeps = @s ach.prev_sleeps run scoreboard players set @s ach.no_sleep_days 0
scoreboard players operation @s ach.prev_sleeps = @s ach.sleeps

# Sync counters from advantage stats (baseline-adjusted, so resets work correctly)
scoreboard players operation @s ach.blocks_mined = @s adv.stat_mine
scoreboard players operation @s ach.fish_caught = @s adv.stat_fish
scoreboard players operation @s ach.crops_harvested = @s adv.stat_harvest
scoreboard players operation @s ach.blocks_placed = @s adv.stat_place
scoreboard players operation @s ach.food_eaten = @s adv.stat_food
scoreboard players operation @s ach.fish_treasure = @s ach.crates_fishing

# Compute derived counters from live game state
function evercraft:achievements/sync/count_trees
function evercraft:achievements/sync/count_biomes
function evercraft:achievements/sync/count_sets
