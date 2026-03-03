# Dungeon Instance System — Load
# Called from init.mcfunction on datapack load

# Death detection scoreboard
scoreboard objectives add dg.deaths deathCount "Dungeon Deaths"

# Lockout timer (stores gametime when dungeon was last completed)
scoreboard objectives add dg.lockout dummy "Dungeon Lockout"

# Leaderboard
scoreboard objectives add dg.start_time dummy "Dungeon Start Time"
scoreboard objectives add dg.elapsed dummy "Dungeon Elapsed Ticks"
scoreboard objectives add dg.elapsed_s dummy "Dungeon Elapsed Seconds"
scoreboard objectives add dg.best_time dummy "Dungeon Best Time"
scoreboard objectives add dg.best_time_s dummy "Dungeon Best Seconds"
scoreboard objectives add dg.best_inst dummy "Dungeon Best Instance"

# Constants
scoreboard players set #20 ec.const 20
# 7 in-game days = 7 * 72000 real ticks = 504000 gametime ticks
scoreboard players set #504000 ec.const 504000

# Initialize global state
execute unless score #dg_active ec.var matches 0.. run scoreboard players set #dg_active ec.var 0
