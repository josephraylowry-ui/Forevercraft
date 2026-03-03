# Dream rate buffs based on time of day, weather, and moon phase
# Runs on 1s schedule (OPT-5, Session 9) — moved from per-tick
# Slow daylight: DayTime advances 1/3 speed, daytime IS visual_time (0-24000)
# Morning 0-6000, Noon 6000-13000, Night 13000-23000, Dawn 23000-24000

# Early exit if no players
execute unless entity @a run return run schedule function evercraft:luck_buffs/tick 1s

# Save previous visual_time for threshold crossing detection
scoreboard players operation #prev_vtime ec.var = #visual_time ec.var

# DayTime is now visual_time directly (no sub_day computation needed)
execute store result score #visual_time ec.var run time query daytime

# Track day number for dawn reset
scoreboard players operation #prev_visual_day ec.var = #visual_day ec.var
execute store result score #visual_day ec.var run time query day

# Get moon phase (0-7, where 0 = full moon, 4 = new moon)
# Save previous phase for dawn_reset (needs to know LAST NIGHT's phase, not the new day's)
scoreboard players operation #prev_moon_phase ec.var = #moon_phase ec.var
scoreboard players operation #moon_phase ec.var = #visual_day ec.var
scoreboard players operation #moon_phase ec.var %= #8 ec.const

# === SLEEP FIX: Skip remaining night when time jumped but it's still night ===
# If visual_time jumped forward >300 ticks (sleep/time command) and still night,
# advance time to dawn so players don't have to sleep twice
scoreboard players operation #vtime_delta ec.var = #visual_time ec.var
scoreboard players operation #vtime_delta ec.var -= #prev_vtime ec.var
execute if score #visual_time ec.var matches 13000..23000 if score #vtime_delta ec.var matches 300.. run function evercraft:visual_time/sleep_skip

# Apply dream rate buffs to all players
execute as @a run function evercraft:luck_buffs/apply

# Track current day per-player for "While You Were Away" briefing (OPT-6: moved from per-tick)
scoreboard players operation @a ec.last_day = #visual_day ec.var

# === DUSK EVENTS (fires once per day at nightfall ~13000) ===
# Previous visual_time < 13000 AND current visual_time >= 13000 = dusk crossing
execute if score #prev_vtime ec.var matches ..12999 if score #visual_time ec.var matches 13000.. unless score #ec_moon_notified ec.var matches 1 run function evercraft:luck_buffs/moon_events

# === DAWN RESET (day number change — fires once per 72000 real ticks) ===
execute unless score #visual_day ec.var = #prev_visual_day ec.var if score #ec_moon_notified ec.var matches 1 run function evercraft:luck_buffs/dawn_reset

# === DAY COUNTER (fires once per dawn — RPG day/era title splash) ===
execute unless score #visual_day ec.var = #prev_visual_day ec.var run function evercraft:day_counter/dawn_display

# === DREAM RATE MILESTONES (every 10s — gametime % 200) ===
execute store result score #gt_drms ec.temp run time query gametime
scoreboard players operation #gt_drms ec.temp %= #200 ec.const
execute if score #gt_drms ec.temp matches 0 as @a run function evercraft:dreams/milestones/check

# Reschedule
schedule function evercraft:luck_buffs/tick 1s
