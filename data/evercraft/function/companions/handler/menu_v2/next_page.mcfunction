# Go to next page
# Called as the interaction entity

# Clear the interaction data so it doesn't trigger again
data remove entity @s interaction

# Find owner player
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu_v2/go_next_page
