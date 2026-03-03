# Artifact Patina — 60-second tick
# Adds 60 seconds to patina_ticks for each equipped artifact

execute as @a at @s run function evercraft:patina/process_player

schedule function evercraft:patina/tick 60s
