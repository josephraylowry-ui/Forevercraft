# Farmer's Almanac - Crop Boost
# Accelerates growth of nearby crops every 3 seconds
# Called from tick function for players with the accessory

# Check if player has Farmer's Almanac in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"farmers_almanac"}] run return 0

# Only run every 60 ticks (3 seconds) using random chance (1/60)
execute store result score #rand ec.var run random value 1..60
execute unless score #rand ec.var matches 1 run return 0

# Grow crops by one stage in 8 block radius
# Wheat
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=7] replace wheat[age=6]
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=6] replace wheat[age=5]
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 wheat[age=5] replace wheat[age=4]

# Carrots
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=7] replace carrots[age=6]
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=6] replace carrots[age=5]
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 carrots[age=5] replace carrots[age=4]

# Potatoes
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=7] replace potatoes[age=6]
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=6] replace potatoes[age=5]
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 potatoes[age=5] replace potatoes[age=4]

# Beetroots
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 beetroots[age=3] replace beetroots[age=2]
execute at @s run fill ~-8 ~-2 ~-8 ~8 ~2 ~8 beetroots[age=2] replace beetroots[age=1]

# Visual feedback
particle happy_villager ~ ~1 ~ 3 1 3 0.05 5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
