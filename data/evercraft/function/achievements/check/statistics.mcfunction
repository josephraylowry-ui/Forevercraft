# ============================================================
# ACHIEVEMENTS — Statistics Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# Uses adjusted stat scoreboards (copy-then-subtract, never vanilla directly)
# ============================================================

# --- Play time (ach.adj_play, 1 hour = 72000 ticks) ---
execute as @a[scores={ach.adj_play=72000..}] unless entity @s[advancements={evercraft:alternate/statistics/common/play_one_hour=true}] run advancement grant @s only evercraft:alternate/statistics/common/play_one_hour
execute as @a[scores={ach.adj_play=720000..}] unless entity @s[advancements={evercraft:alternate/statistics/uncommon/play_ten_hours=true}] run advancement grant @s only evercraft:alternate/statistics/uncommon/play_ten_hours
execute as @a[scores={ach.adj_play=3600000..}] unless entity @s[advancements={evercraft:alternate/statistics/rare/play_fifty_hours=true}] run advancement grant @s only evercraft:alternate/statistics/rare/play_fifty_hours
execute as @a[scores={ach.adj_play=7200000..}] unless entity @s[advancements={evercraft:alternate/statistics/ornate/play_hundred_hours=true}] run advancement grant @s only evercraft:alternate/statistics/ornate/play_hundred_hours
execute as @a[scores={ach.adj_play=36000000..}] unless entity @s[advancements={evercraft:alternate/statistics/exquisite/play_five_hundred_hours=true}] run advancement grant @s only evercraft:alternate/statistics/exquisite/play_five_hundred_hours
execute as @a[scores={ach.adj_play=72000000..}] unless entity @s[advancements={evercraft:alternate/statistics/mythical/play_thousand_hours=true}] run advancement grant @s only evercraft:alternate/statistics/mythical/play_thousand_hours

# --- Walk distance (ach.adj_walk, 1 block = 100 cm) ---
execute as @a[scores={ach.adj_walk=1000000..}] unless entity @s[advancements={evercraft:alternate/statistics/common/walk_ten_thousand=true}] run advancement grant @s only evercraft:alternate/statistics/common/walk_ten_thousand
execute as @a[scores={ach.adj_walk=10000000..}] unless entity @s[advancements={evercraft:alternate/statistics/uncommon/walk_hundred_thousand=true}] run advancement grant @s only evercraft:alternate/statistics/uncommon/walk_hundred_thousand
execute as @a[scores={ach.adj_walk=100000000..}] unless entity @s[advancements={evercraft:alternate/statistics/rare/walk_million=true}] run advancement grant @s only evercraft:alternate/statistics/rare/walk_million

# --- Food eaten ---
execute as @a[scores={ach.food_eaten=100..}] unless entity @s[advancements={evercraft:alternate/statistics/common/eat_hundred=true}] run advancement grant @s only evercraft:alternate/statistics/common/eat_hundred
execute as @a[scores={ach.food_eaten=1000..}] unless entity @s[advancements={evercraft:alternate/statistics/uncommon/eat_thousand=true}] run advancement grant @s only evercraft:alternate/statistics/uncommon/eat_thousand

# --- Jump count ---
execute as @a[scores={ach.adj_jump=100000..}] unless entity @s[advancements={evercraft:alternate/statistics/rare/jump_hundred_thousand=true}] run advancement grant @s only evercraft:alternate/statistics/rare/jump_hundred_thousand

# --- Blocks placed ---
execute as @a[scores={ach.blocks_placed=100000..}] unless entity @s[advancements={evercraft:alternate/statistics/rare/place_hundred_thousand=true}] run advancement grant @s only evercraft:alternate/statistics/rare/place_hundred_thousand

# --- Sprint distance (ach.adj_sprint, 100 cm = 1 block) ---
execute as @a[scores={ach.adj_sprint=10000000..}] unless entity @s[advancements={evercraft:alternate/statistics/common/speed_runner=true}] run advancement grant @s only evercraft:alternate/statistics/common/speed_runner

# --- Trades ---
execute as @a[scores={ach.adj_trade=50..}] unless entity @s[advancements={evercraft:alternate/statistics/uncommon/social_butterfly=true}] run advancement grant @s only evercraft:alternate/statistics/uncommon/social_butterfly

# --- Sleep count ---
execute as @a[scores={ach.adj_sleep=50..}] unless entity @s[advancements={evercraft:alternate/statistics/uncommon/nomad=true}] run advancement grant @s only evercraft:alternate/statistics/uncommon/nomad

# --- Chests opened ---
execute as @a[scores={ach.adj_chest=500..}] unless entity @s[advancements={evercraft:alternate/statistics/rare/treasure_hunter=true}] run advancement grant @s only evercraft:alternate/statistics/rare/treasure_hunter

# --- Swim distance (ach.adj_swim, 100 cm = 1 block) ---
execute as @a[scores={ach.adj_swim=10000000..}] unless entity @s[advancements={evercraft:alternate/statistics/ornate/aquatic_explorer=true}] run advancement grant @s only evercraft:alternate/statistics/ornate/aquatic_explorer

# --- Fall distance (ach.adj_fall, 100 cm = 1 block, 1M blocks = 100M cm) ---
execute as @a[scores={ach.adj_fall=100000000..}] unless entity @s[advancements={evercraft:alternate/statistics/exquisite/fall_survivor=true}] run advancement grant @s only evercraft:alternate/statistics/exquisite/fall_survivor

# --- Pyromaniac: Use flint and steel 500 times ---
execute as @a[scores={ach.adj_flint=500..}] unless entity @s[advancements={evercraft:alternate/statistics/rare/pyromaniac=true}] run advancement grant @s only evercraft:alternate/statistics/rare/pyromaniac

# --- Cartographer: Craft 50 maps ---
execute as @a[scores={ach.adj_map=50..}] unless entity @s[advancements={evercraft:alternate/statistics/ornate/cartographer=true}] run advancement grant @s only evercraft:alternate/statistics/ornate/cartographer
