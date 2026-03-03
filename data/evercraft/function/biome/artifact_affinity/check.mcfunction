# Artifact Biome Affinity Check
# Called after an artifact is rolled from any crate system
# Uses ec.biome_id (already set by biome/detect) 
# Checks if the nearest dropped artifact item matches the current biome
# If not matching, 96% chance to destroy it (25x rarer outside home biome)

# Step 1: Detect biome
function evercraft:biome/detect

# Step 2: Check each artifact set against current biome
# If biome matches any of the artifact's home biomes, tag as "affinity_match"
tag @s remove ec.affinity_match

# Plains (0) - no exclusive artifact sets, has general accessories
execute if score @s ec.biome_id matches 0 run tag @s add ec.biome_plains
# Forest (1) - Nature set
execute if score @s ec.biome_id matches 1 run tag @s add ec.biome_forest
# ... etc

# The actual check happens on the item level in the crate spawn functions
# This function just ensures biome_id is set for downstream use
