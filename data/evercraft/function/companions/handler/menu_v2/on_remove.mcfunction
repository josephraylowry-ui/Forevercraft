# Handle remove button click from menu
# Called as the interaction entity
# Converts the active pet back to a head item AND removes it from the pet list

# Clear the interaction data so it doesn't trigger again
data remove entity @s interaction

# Find the owner player
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu_v2/do_remove
