# Handle treat button click from menu
# Called as the interaction entity

# Clear the interaction data so it doesn't trigger again
data remove entity @s interaction

# Find the owner player and give treat
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu_v2/do_treat
