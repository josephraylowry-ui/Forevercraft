# Achievement Baseline Adjustment — Per-player (runs as @s = player)
# OPT: Consolidates 26 @a scans into 1 function call
# CRITICAL: Never modify vanilla stat scoreboards directly — Minecraft only increments
# by delta (not restore), so subtracting would compound and cause integer overflow.

scoreboard players operation @s ach.adj_play = @s ach.play_ticks
scoreboard players operation @s ach.adj_play -= @s ach.base_play
scoreboard players operation @s ach.adj_walk = @s ach.walk_cm
scoreboard players operation @s ach.adj_walk -= @s ach.base_walk
scoreboard players operation @s ach.adj_jump = @s ach.jumps
scoreboard players operation @s ach.adj_jump -= @s ach.base_jump
scoreboard players operation @s ach.adj_sprint = @s ach.sprint_cm
scoreboard players operation @s ach.adj_sprint -= @s ach.base_sprint
scoreboard players operation @s ach.adj_trade = @s ach.trades_done
scoreboard players operation @s ach.adj_trade -= @s ach.base_trade
scoreboard players operation @s ach.adj_sleep = @s ach.sleeps
scoreboard players operation @s ach.adj_sleep -= @s ach.base_sleep
scoreboard players operation @s ach.adj_chest = @s ach.chests_opened
scoreboard players operation @s ach.adj_chest -= @s ach.base_chest
scoreboard players operation @s ach.adj_swim = @s ach.swim_cm
scoreboard players operation @s ach.adj_swim -= @s ach.base_swim
scoreboard players operation @s ach.adj_fall = @s ach.fall_cm
scoreboard players operation @s ach.adj_fall -= @s ach.base_fall
scoreboard players operation @s ach.adj_flint = @s ach.flint_used
scoreboard players operation @s ach.adj_flint -= @s ach.base_flint
scoreboard players operation @s ach.adj_map = @s ach.maps_crafted
scoreboard players operation @s ach.adj_map -= @s ach.base_map
scoreboard players operation @s ach.adj_brew = @s ach.brew_count
scoreboard players operation @s ach.adj_brew -= @s ach.base_brew
scoreboard players operation @s ach.adj_ench = @s ach.enchant_count
scoreboard players operation @s ach.adj_ench -= @s ach.base_ench
