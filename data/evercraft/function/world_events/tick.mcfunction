# World Events — Main Tick
# Checks conditions when idle (60s), routes active event ticks (1s)

# Early exit if no players
execute unless entity @a run schedule function evercraft:world_events/tick 20s
execute unless entity @a run return 0

# === Active Event Routing (1s tick when active) ===
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 1 run function evercraft:world_events/starfall/tick
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 2 run function evercraft:world_events/the_dreaming/tick
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 3 run function evercraft:world_events/abyssal_tremor/tick
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 4 run function evercraft:world_events/aurora_bloom/tick
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 5 run function evercraft:world_events/rift_echo/tick

# === World Event Omen Tick (pre-event warning countdown) ===
execute if score #we_omen_timer ec.var matches 1.. run function evercraft:omens/world_events/tick

# === Idle: Condition Check (only when no event active and no omen active) ===
execute unless score #we_active ec.var matches 1 unless score #we_omen_timer ec.var matches 1.. run function evercraft:world_events/compute_avg_dr
execute unless score #we_active ec.var matches 1 unless score #we_omen_timer ec.var matches 1.. run function evercraft:world_events/check_conditions

# Reschedule based on state (1s when active or omen running, 60s when idle)
execute if score #we_active ec.var matches 1 run schedule function evercraft:world_events/tick 1s
execute if score #we_omen_timer ec.var matches 1.. run schedule function evercraft:world_events/tick 1s
execute unless score #we_active ec.var matches 1 unless score #we_omen_timer ec.var matches 1.. run schedule function evercraft:world_events/tick 60s
