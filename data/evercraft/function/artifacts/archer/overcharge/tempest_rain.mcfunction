# Tempest — Arrow Rain
# Spawns 12 arrows raining down from the marker location

execute as @e[type=marker,tag=ec.ar_tempest,limit=1] at @s run function evercraft:artifacts/archer/overcharge/tempest_volley

# Clean up marker
kill @e[type=marker,tag=ec.ar_tempest]
