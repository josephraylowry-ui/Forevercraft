# Ore Node: Spawn an additional node nearby (cluster spawning)
# Run at the position of the first spawned node

# Check cap — respect the 7-node limit
execute store result score #pr_count ec.temp if entity @e[type=marker,tag=ec.prospect_data,distance=..100]
execute if score #pr_count ec.temp matches 7.. run return 0

# Spread a temp marker 3-8 blocks from this position
summon marker ~ ~ ~ {Tags:["ec.prospect_cluster"]}
execute store success score #pr_spread ec.temp run spreadplayers ~ ~ 3 8 false @e[type=marker,tag=ec.prospect_cluster,limit=1]

# If spread failed, clean up
execute if score #pr_spread ec.temp matches 0 run kill @e[type=marker,tag=ec.prospect_cluster]
execute if score #pr_spread ec.temp matches 0 run return 0

# Place node at the cluster position
execute at @e[type=marker,tag=ec.prospect_cluster,limit=1] run function evercraft:prospect/place_node
kill @e[type=marker,tag=ec.prospect_cluster]
