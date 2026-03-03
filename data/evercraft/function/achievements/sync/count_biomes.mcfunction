# Count unique biomes the player has visited
# Uses permanent tags so visits are remembered forever
# Biome IDs from biome/detect.mcfunction (0-24)

# Tag current biome as visited (tags are permanent)
execute if score @s ec.biome_id matches 0 run tag @s add ach_biome_plains
execute if score @s ec.biome_id matches 1 run tag @s add ach_biome_forest
execute if score @s ec.biome_id matches 2 run tag @s add ach_biome_flower_forest
execute if score @s ec.biome_id matches 3 run tag @s add ach_biome_dark_forest
execute if score @s ec.biome_id matches 4 run tag @s add ach_biome_taiga
execute if score @s ec.biome_id matches 5 run tag @s add ach_biome_mountain
execute if score @s ec.biome_id matches 6 run tag @s add ach_biome_jungle
execute if score @s ec.biome_id matches 7 run tag @s add ach_biome_desert
execute if score @s ec.biome_id matches 8 run tag @s add ach_biome_savanna
execute if score @s ec.biome_id matches 9 run tag @s add ach_biome_ocean
execute if score @s ec.biome_id matches 10 run tag @s add ach_biome_river
execute if score @s ec.biome_id matches 11 run tag @s add ach_biome_swamp
execute if score @s ec.biome_id matches 12 run tag @s add ach_biome_mushroom
execute if score @s ec.biome_id matches 13 run tag @s add ach_biome_ice
execute if score @s ec.biome_id matches 14 run tag @s add ach_biome_badlands
execute if score @s ec.biome_id matches 15 run tag @s add ach_biome_lush_caves
execute if score @s ec.biome_id matches 16 run tag @s add ach_biome_dripstone_caves
execute if score @s ec.biome_id matches 17 run tag @s add ach_biome_deep_dark
execute if score @s ec.biome_id matches 18 run tag @s add ach_biome_nether_wastes
execute if score @s ec.biome_id matches 19 run tag @s add ach_biome_crimson_forest
execute if score @s ec.biome_id matches 20 run tag @s add ach_biome_warped_forest
execute if score @s ec.biome_id matches 21 run tag @s add ach_biome_basalt_deltas
execute if score @s ec.biome_id matches 22 run tag @s add ach_biome_soul_sand_valley
execute if score @s ec.biome_id matches 23 run tag @s add ach_biome_the_end
execute if score @s ec.biome_id matches 24 run tag @s add ach_biome_wind

# Count all visited biome tags
scoreboard players set @s ach.biomes_visited 0
execute if entity @s[tag=ach_biome_plains] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_forest] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_flower_forest] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_dark_forest] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_taiga] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_mountain] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_jungle] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_desert] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_savanna] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_ocean] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_river] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_swamp] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_mushroom] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_ice] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_badlands] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_lush_caves] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_dripstone_caves] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_deep_dark] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_nether_wastes] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_crimson_forest] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_warped_forest] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_basalt_deltas] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_soul_sand_valley] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_the_end] run scoreboard players add @s ach.biomes_visited 1
execute if entity @s[tag=ach_biome_wind] run scoreboard players add @s ach.biomes_visited 1
