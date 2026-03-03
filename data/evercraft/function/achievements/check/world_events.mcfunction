# ============================================================
# ACHIEVEMENTS — World Event Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# ============================================================

# --- Storm Chaser: Experience all 3 new calendar events (Meteor, Rift, Prosperity) ---
# Tracked via ach.cal_meteor, ach.cal_rift, ach.cal_prosperity (set to 1 in each event start)
execute as @a[scores={ach.cal_meteor=1..,ach.cal_rift=1..,ach.cal_prosperity=1..}] unless entity @s[advancements={evercraft:alternate/exploration/exquisite/storm_chaser=true}] run advancement grant @s only evercraft:alternate/exploration/exquisite/storm_chaser

# --- World Event Veteran: Experience all 5 spontaneous events ---
# Tracked via ach.we_starfall, ach.we_dreaming, ach.we_abyssal, ach.we_aurora, ach.we_rift_echo
execute as @a[scores={ach.we_starfall=1..,ach.we_dreaming=1..,ach.we_abyssal=1..,ach.we_aurora=1..,ach.we_rift_echo=1..}] unless entity @s[advancements={evercraft:alternate/exploration/mythical/world_event_veteran=true}] run advancement grant @s only evercraft:alternate/exploration/mythical/world_event_veteran

# --- Rift Survivor: Kill 10 rift mobs in one Dimensional Rift ---
# Tracked via ach.rift_kills_event (reset at event start, incremented in on_kill)
execute as @a[scores={ach.rift_kills_event=10..}] unless entity @s[advancements={evercraft:alternate/exploration/ornate/rift_survivor=true}] run advancement grant @s only evercraft:alternate/exploration/ornate/rift_survivor

# --- Star Collector: Pick up a Fallen Star (tracked in starfall/spawn_star) ---
# Tracked via ach.fallen_stars (incremented when star is given)
execute as @a[scores={ach.fallen_stars=1..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/star_collector=true}] run advancement grant @s only evercraft:alternate/exploration/rare/star_collector

# Note: The Dreaming and Witness to The Dreaming are granted directly in the_dreaming/start
# Note: Rift Warden Slayer uses player_killed_entity trigger in the advancement JSON
# --- Meteor Hunter: Collect 5 meteor ores during a Meteor Shower ---
# Tracked via ach.meteor_ores_event (reset at event start, incremented when ore marker's block becomes air)
execute as @a[scores={ach.meteor_ores_event=5..}] unless entity @s[advancements={evercraft:alternate/exploration/uncommon/meteor_hunter=true}] run advancement grant @s only evercraft:alternate/exploration/uncommon/meteor_hunter

# --- Prosperity's Favorite: Open 10 crates during Prosperity Tide ---
# Uses baseline comparison: ach.crates_opened - ach.prosperity_base >= 10
execute if score #cal_prosperity ec.var matches 1 as @a run scoreboard players operation @s ec.temp = @s ach.crates_opened
execute if score #cal_prosperity ec.var matches 1 as @a run scoreboard players operation @s ec.temp -= @s ach.prosperity_base
execute if score #cal_prosperity ec.var matches 1 as @a[scores={ec.temp=10..}] unless entity @s[advancements={evercraft:alternate/exploration/uncommon/prosperity_favorite=true}] run advancement grant @s only evercraft:alternate/exploration/uncommon/prosperity_favorite

# --- Tremor Walker: Mine 3 ancient debris during Abyssal Tremor ---
# Uses baseline comparison: ach.mined_debris - ach.tremor_base >= 3
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 3 as @a run scoreboard players operation @s ec.temp = @s ach.mined_debris
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 3 as @a run scoreboard players operation @s ec.temp -= @s ach.tremor_base
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 3 as @a[scores={ec.temp=3..}] unless entity @s[advancements={evercraft:alternate/exploration/rare/tremor_walker=true}] run advancement grant @s only evercraft:alternate/exploration/rare/tremor_walker

# --- Aurora Harvester: Harvest 100 crops during Aurora Bloom ---
# Uses baseline comparison: adv.stat_harvest - ach.aurora_base >= 100
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 4 as @a run scoreboard players operation @s ec.temp = @s adv.stat_harvest
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 4 as @a run scoreboard players operation @s ec.temp -= @s ach.aurora_base
execute if score #we_active ec.var matches 1 if score #we_event_id ec.var matches 4 as @a[scores={ec.temp=100..}] unless entity @s[advancements={evercraft:alternate/exploration/ornate/aurora_harvester=true}] run advancement grant @s only evercraft:alternate/exploration/ornate/aurora_harvester
