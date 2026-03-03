# Update all menu element positions relative to anchor
# Called as the anchor marker, at the anchor position

# Get the facing direction from the owner player
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id,limit=1] at @s anchored eyes run function evercraft:companions/handler/menu_v2/reposition_elements
