# World Milestones — Periodic Check (every 60s)
# Evaluates all incomplete milestones against current world counters

# === Milestone 1: First Light — First patron kill world-wide ===
execute unless score #rm_done_1 ec.var matches 1 if score #rm_patrons ec.var matches 1.. run function evercraft:milestones/complete/first_light

# === Milestone 3: Brave New World — 5 unique biomes explored ===
execute unless score #rm_done_3 ec.var matches 1 if score #rm_biomes ec.var matches 5.. run function evercraft:milestones/complete/brave_new_world

# === Milestone 5: The Hunt Begins — 25 patron kills ===
execute unless score #rm_done_5 ec.var matches 1 if score #rm_patrons ec.var matches 25.. run function evercraft:milestones/complete/the_hunt

# === Milestone 6: Pet Collectors — 25 unique pets discovered ===
execute unless score #rm_done_6 ec.var matches 1 if score #rm_pets ec.var matches 25.. run function evercraft:milestones/complete/pet_collectors

# === Milestone 7: Seasoned Chefs — 10 recipes cooked ===
execute unless score #rm_done_7 ec.var matches 1 if score #rm_recipes ec.var matches 10.. run function evercraft:milestones/complete/seasoned_chefs

# === Milestone 8: Lore Seekers — 50 lore pieces collected ===
execute unless score #rm_done_8 ec.var matches 1 if score #rm_lore ec.var matches 50.. run function evercraft:milestones/complete/lore_seekers

# === Milestone 9: Slayers of the Deep — First boss killed ===
execute unless score #rm_done_9 ec.var matches 1 if score #rm_boss_kills ec.var matches 1.. run function evercraft:milestones/complete/slayers_deep

# === Milestone 10: Across All Lands — All 25 biomes visited ===
execute unless score #rm_done_10 ec.var matches 1 if score #rm_biomes ec.var matches 25.. run function evercraft:milestones/complete/across_all_lands

# === Milestone 11: Legendary Arsenal — 5 mythical artifacts ===
execute unless score #rm_done_11 ec.var matches 1 if score #rm_mythicals ec.var matches 5.. run function evercraft:milestones/complete/legendary_arsenal

# === Milestone 12: Quest Masters — 100 quests completed ===
execute unless score #rm_done_12 ec.var matches 1 if score #rm_quests ec.var matches 100.. run function evercraft:milestones/complete/quest_masters

# Reschedule
schedule function evercraft:milestones/check 60s
