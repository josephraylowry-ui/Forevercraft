# Called when player interacts with pet's interaction entity
# Run as interaction entity

# Clear the interaction data first
data remove entity @s interaction

# Get the player who interacted
execute as @a[predicate=evercraft:companions/check_id, distance=..5, limit=1] run function evercraft:companions/handler/relationship/process_interact
