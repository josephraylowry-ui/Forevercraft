# Check if an artifact set matches the current biome
# Sets ec.affinity_match score to 1 if matching, 0 if not
# Artifact sets and their home biomes:

scoreboard players set @s ec.affinity_match 0

# Nature set -> forest(1), jungle(6), lush_caves(15)
execute if data storage evercraft:temp {artifact_set:"nature"} if score @s ec.biome_id matches 1 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"nature"} if score @s ec.biome_id matches 6 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"nature"} if score @s ec.biome_id matches 15 run scoreboard players set @s ec.affinity_match 1

# Dragonslayer set -> badlands(14)
execute if data storage evercraft:temp {artifact_set:"dragonslayer"} if score @s ec.biome_id matches 14 run scoreboard players set @s ec.affinity_match 1

# Netherwalker set -> nether_wastes(18), crimson_forest(19), warped_forest(20), basalt_deltas(21)
execute if data storage evercraft:temp {artifact_set:"netherwalker"} if score @s ec.biome_id matches 18 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"netherwalker"} if score @s ec.biome_id matches 19 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"netherwalker"} if score @s ec.biome_id matches 20 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"netherwalker"} if score @s ec.biome_id matches 21 run scoreboard players set @s ec.affinity_match 1

# Frost set -> ice(13)
execute if data storage evercraft:temp {artifact_set:"frost"} if score @s ec.biome_id matches 13 run scoreboard players set @s ec.affinity_match 1

# Wither set -> deep_dark(17), soul_sand_valley(22)
execute if data storage evercraft:temp {artifact_set:"wither"} if score @s ec.biome_id matches 17 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"wither"} if score @s ec.biome_id matches 22 run scoreboard players set @s ec.affinity_match 1

# Phantom set -> dark_forest(3)
execute if data storage evercraft:temp {artifact_set:"phantom"} if score @s ec.biome_id matches 3 run scoreboard players set @s ec.affinity_match 1

# Ocean set -> ocean(9)
execute if data storage evercraft:temp {artifact_set:"ocean"} if score @s ec.biome_id matches 9 run scoreboard players set @s ec.affinity_match 1

# Ender set -> the_end(23)
execute if data storage evercraft:temp {artifact_set:"ender"} if score @s ec.biome_id matches 23 run scoreboard players set @s ec.affinity_match 1

# Storm set -> taiga(4), mountain(5)
execute if data storage evercraft:temp {artifact_set:"storm"} if score @s ec.biome_id matches 4 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"storm"} if score @s ec.biome_id matches 5 run scoreboard players set @s ec.affinity_match 1

# Golem set -> mountain(5), badlands(14), dripstone_caves(16)
execute if data storage evercraft:temp {artifact_set:"golem"} if score @s ec.biome_id matches 5 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"golem"} if score @s ec.biome_id matches 14 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"golem"} if score @s ec.biome_id matches 16 run scoreboard players set @s ec.affinity_match 1

# Sculk set -> deep_dark(17)
execute if data storage evercraft:temp {artifact_set:"sculk"} if score @s ec.biome_id matches 17 run scoreboard players set @s ec.affinity_match 1

# Celestial set -> flower_forest(2), desert(7)
execute if data storage evercraft:temp {artifact_set:"celestial"} if score @s ec.biome_id matches 2 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"celestial"} if score @s ec.biome_id matches 7 run scoreboard players set @s ec.affinity_match 1

# Blood set -> savanna(8), crimson_forest(19)
execute if data storage evercraft:temp {artifact_set:"blood"} if score @s ec.biome_id matches 8 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"blood"} if score @s ec.biome_id matches 19 run scoreboard players set @s ec.affinity_match 1

# Shadow set -> dark_forest(3), soul_sand_valley(22)
execute if data storage evercraft:temp {artifact_set:"shadow"} if score @s ec.biome_id matches 3 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"shadow"} if score @s ec.biome_id matches 22 run scoreboard players set @s ec.affinity_match 1

# Crystal set -> swamp(11), mushroom(12), ice(13)
execute if data storage evercraft:temp {artifact_set:"crystal"} if score @s ec.biome_id matches 11 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"crystal"} if score @s ec.biome_id matches 12 run scoreboard players set @s ec.affinity_match 1
execute if data storage evercraft:temp {artifact_set:"crystal"} if score @s ec.biome_id matches 13 run scoreboard players set @s ec.affinity_match 1

# Universal/no-set artifacts -- always match (no penalty)
execute if data storage evercraft:temp {artifact_set:""} run scoreboard players set @s ec.affinity_match 1
execute unless data storage evercraft:temp artifact_set run scoreboard players set @s ec.affinity_match 1
