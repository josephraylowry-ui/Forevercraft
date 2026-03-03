# World Milestones — Load
# Initialize all scoreboards and schedule checker

scoreboard objectives add ec.milestones trigger "View Milestones"
scoreboard players enable @a ec.milestones

# Global counters (preserve across reloads)
execute unless score #rm_patrons ec.var matches -2147483648.. run scoreboard players set #rm_patrons ec.var 0
execute unless score #rm_pets ec.var matches -2147483648.. run scoreboard players set #rm_pets ec.var 0
execute unless score #rm_quests ec.var matches -2147483648.. run scoreboard players set #rm_quests ec.var 0
execute unless score #rm_mythicals ec.var matches -2147483648.. run scoreboard players set #rm_mythicals ec.var 0
execute unless score #rm_biomes ec.var matches -2147483648.. run scoreboard players set #rm_biomes ec.var 0
execute unless score #rm_lore ec.var matches -2147483648.. run scoreboard players set #rm_lore ec.var 0
execute unless score #rm_recipes ec.var matches -2147483648.. run scoreboard players set #rm_recipes ec.var 0
execute unless score #rm_boss_kills ec.var matches -2147483648.. run scoreboard players set #rm_boss_kills ec.var 0

# Per-milestone completion flags (0=incomplete, 1=complete)
execute unless score #rm_done_1 ec.var matches -2147483648.. run scoreboard players set #rm_done_1 ec.var 0
execute unless score #rm_done_3 ec.var matches -2147483648.. run scoreboard players set #rm_done_3 ec.var 0
execute unless score #rm_done_5 ec.var matches -2147483648.. run scoreboard players set #rm_done_5 ec.var 0
execute unless score #rm_done_6 ec.var matches -2147483648.. run scoreboard players set #rm_done_6 ec.var 0
execute unless score #rm_done_7 ec.var matches -2147483648.. run scoreboard players set #rm_done_7 ec.var 0
execute unless score #rm_done_8 ec.var matches -2147483648.. run scoreboard players set #rm_done_8 ec.var 0
execute unless score #rm_done_9 ec.var matches -2147483648.. run scoreboard players set #rm_done_9 ec.var 0
execute unless score #rm_done_10 ec.var matches -2147483648.. run scoreboard players set #rm_done_10 ec.var 0
execute unless score #rm_done_11 ec.var matches -2147483648.. run scoreboard players set #rm_done_11 ec.var 0
execute unless score #rm_done_12 ec.var matches -2147483648.. run scoreboard players set #rm_done_12 ec.var 0

# Per-biome world tracking (25 biomes, 0=unseen by anyone)
execute unless score #rm_b0 ec.var matches -2147483648.. run scoreboard players set #rm_b0 ec.var 0
execute unless score #rm_b1 ec.var matches -2147483648.. run scoreboard players set #rm_b1 ec.var 0
execute unless score #rm_b2 ec.var matches -2147483648.. run scoreboard players set #rm_b2 ec.var 0
execute unless score #rm_b3 ec.var matches -2147483648.. run scoreboard players set #rm_b3 ec.var 0
execute unless score #rm_b4 ec.var matches -2147483648.. run scoreboard players set #rm_b4 ec.var 0
execute unless score #rm_b5 ec.var matches -2147483648.. run scoreboard players set #rm_b5 ec.var 0
execute unless score #rm_b6 ec.var matches -2147483648.. run scoreboard players set #rm_b6 ec.var 0
execute unless score #rm_b7 ec.var matches -2147483648.. run scoreboard players set #rm_b7 ec.var 0
execute unless score #rm_b8 ec.var matches -2147483648.. run scoreboard players set #rm_b8 ec.var 0
execute unless score #rm_b9 ec.var matches -2147483648.. run scoreboard players set #rm_b9 ec.var 0
execute unless score #rm_b10 ec.var matches -2147483648.. run scoreboard players set #rm_b10 ec.var 0
execute unless score #rm_b11 ec.var matches -2147483648.. run scoreboard players set #rm_b11 ec.var 0
execute unless score #rm_b12 ec.var matches -2147483648.. run scoreboard players set #rm_b12 ec.var 0
execute unless score #rm_b13 ec.var matches -2147483648.. run scoreboard players set #rm_b13 ec.var 0
execute unless score #rm_b14 ec.var matches -2147483648.. run scoreboard players set #rm_b14 ec.var 0
execute unless score #rm_b15 ec.var matches -2147483648.. run scoreboard players set #rm_b15 ec.var 0
execute unless score #rm_b16 ec.var matches -2147483648.. run scoreboard players set #rm_b16 ec.var 0
execute unless score #rm_b17 ec.var matches -2147483648.. run scoreboard players set #rm_b17 ec.var 0
execute unless score #rm_b18 ec.var matches -2147483648.. run scoreboard players set #rm_b18 ec.var 0
execute unless score #rm_b19 ec.var matches -2147483648.. run scoreboard players set #rm_b19 ec.var 0
execute unless score #rm_b20 ec.var matches -2147483648.. run scoreboard players set #rm_b20 ec.var 0
execute unless score #rm_b21 ec.var matches -2147483648.. run scoreboard players set #rm_b21 ec.var 0
execute unless score #rm_b22 ec.var matches -2147483648.. run scoreboard players set #rm_b22 ec.var 0
execute unless score #rm_b23 ec.var matches -2147483648.. run scoreboard players set #rm_b23 ec.var 0
execute unless score #rm_b24 ec.var matches -2147483648.. run scoreboard players set #rm_b24 ec.var 0

# Schedule milestone checker (every 60 seconds)
schedule function evercraft:milestones/check 60s
