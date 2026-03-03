# Remove the active pet - convert back to head item and remove from pet list
# Called as the player

# Must have an active pet to remove
execute unless entity @s[tag=Pets.ActivePet] run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Summon a pet first to remove it.",color:"red"}]

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Store the pet's profile name for array removal (uses same pattern as old menu convert)
data modify storage evercraft:companions name set from entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[1].value

# Remove from marker's pet list (uses existing database function)
function evercraft:companions/handler/database/remove_pet with storage evercraft:companions

# Convert the active pet back to a dropped item (retains level data)
function evercraft:companions/handler/active_pet/convert

# Close the menu
function evercraft:companions/handler/menu_v2/close

# Notify
tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Pet removed and returned to you!",color:"green"}]
