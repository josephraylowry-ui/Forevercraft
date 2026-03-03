# Companion Catalogue - Close
# Kills all menu elements and cleans up tags

# Only proceed if in menu
execute unless entity @s[tag=Pets.InMenuV2] run return fail

# Get player ID for cleanup
scoreboard players operation #Search Pets.ID = @s Pets.ID

# Kill all menu elements belonging to this player
kill @e[type=item_display,tag=Pets.MenuElement,predicate=evercraft:companions/check_id]
kill @e[type=text_display,tag=Pets.MenuElement,predicate=evercraft:companions/check_id]
kill @e[type=interaction,tag=Pets.MenuElement,predicate=evercraft:companions/check_id]
kill @e[type=marker,tag=Pets.MenuAnchor,predicate=evercraft:companions/check_id]

# Remove player tags
tag @s remove Pets.InMenuV2
tag @s remove Pets.ActiveMenu
tag @s remove Pets.InfoScreen

# Reset page
scoreboard players reset @s Pets.MenuPage

# Cleanup orphaned menu elements (from previous broken opens where Pets.ID was never assigned)
# Only runs if no other player has a menu open within 10 blocks
execute unless entity @a[tag=Pets.InMenuV2,distance=..10] run kill @e[type=item_display,tag=Pets.MenuElement,distance=..10]
execute unless entity @a[tag=Pets.InMenuV2,distance=..10] run kill @e[type=text_display,tag=Pets.MenuElement,distance=..10]
execute unless entity @a[tag=Pets.InMenuV2,distance=..10] run kill @e[type=interaction,tag=Pets.MenuElement,distance=..10]
execute unless entity @a[tag=Pets.InMenuV2,distance=..10] run kill @e[type=marker,tag=Pets.MenuAnchor,distance=..10]

# Play close sound
playsound minecraft:block.chest.close master @s ~ ~ ~ 0.5 1.2
