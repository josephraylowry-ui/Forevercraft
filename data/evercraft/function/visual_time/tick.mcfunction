# Visual Time Tracker — Tick (1s self-schedule)
# Slow daylight: DayTime advances 1 per 3 real ticks, so daytime IS visual_time (0-24000)
# and day IS visual_day (increments every 72000 real ticks)

# Early exit if no players
execute unless entity @a run return run schedule function evercraft:visual_time/tick 1s

# DayTime is now the visual time directly (no sub_day computation needed)
execute store result score #visual_time ec.var run time query daytime
execute store result score #visual_day ec.var run time query day

# Reschedule
schedule function evercraft:visual_time/tick 1s
