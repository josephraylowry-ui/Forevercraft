# Runeforge GUI — Calculate remaining forge time
# Gametime-based: 3 in-game days = 216000 ticks (72000 per day)

# Get current gametime
execute store result score #rf_now rf.timer run time query gametime

# Get forge_started_at from nearest marker
execute store result score #rf_started rf.timer run data get entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.forge_started_at

# elapsed = now - started
scoreboard players operation #rf_elapsed rf.timer = #rf_now rf.timer
scoreboard players operation #rf_elapsed rf.timer -= #rf_started rf.timer

# remaining = 216000 - elapsed
scoreboard players set #rf_total rf.timer 216000
scoreboard players operation #rf_remaining rf.timer = #rf_total rf.timer
scoreboard players operation #rf_remaining rf.timer -= #rf_elapsed rf.timer

# Check if complete (remaining <= 0) — auto-transition to state 3
execute if score #rf_remaining rf.timer matches ..0 run data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_state set value 3
execute if score #rf_remaining rf.timer matches ..0 run scoreboard players set @s rf.state 3
execute if score #rf_remaining rf.timer matches ..0 run return 0

# Calculate days = remaining / 72000
scoreboard players operation #rf_days rf.timer = #rf_remaining rf.timer
scoreboard players set #rf_div rf.timer 72000
scoreboard players operation #rf_days rf.timer /= #rf_div rf.timer

# remaining_after_days = remaining - (days * 72000)
scoreboard players operation #rf_hours_ticks rf.timer = #rf_remaining rf.timer
scoreboard players operation #rf_temp rf.timer = #rf_days rf.timer
scoreboard players operation #rf_temp rf.timer *= #rf_div rf.timer
scoreboard players operation #rf_hours_ticks rf.timer -= #rf_temp rf.timer

# hours = remaining_after_days / 3000 (72000 ticks per day / 24 hours)
scoreboard players set #rf_div rf.timer 3000
scoreboard players operation #rf_hours rf.timer = #rf_hours_ticks rf.timer
scoreboard players operation #rf_hours rf.timer /= #rf_div rf.timer

# Store for macro display
execute store result storage evercraft:runeforge temp_days int 1 run scoreboard players get #rf_days rf.timer
execute store result storage evercraft:runeforge temp_hours int 1 run scoreboard players get #rf_hours rf.timer

# Update info text with countdown via macro
function evercraft:runeforge/gui/set_timer_text with storage evercraft:runeforge
