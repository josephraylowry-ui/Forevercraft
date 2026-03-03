# Companion Catalogue - Tick
# Called every tick for players with menu open
# Handles: click detection, distance checks
# Menu is STATIONARY — spawned once and stays in place

# Only run for players in menu
execute unless entity @s[tag=Pets.InMenuV2] run return fail

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Close menu if player switches away from Companion Catalogue item
execute unless entity @s[predicate=evercraft:companions/holding_pet_menu] run return run function evercraft:companions/handler/menu_v2/close

# Close menu if player moves too far from anchor (walked away)
execute unless entity @e[type=marker,tag=Pets.MenuAnchor,predicate=evercraft:companions/check_id,distance=..5] run return run function evercraft:companions/handler/menu_v2/close

# Check for interactions (clicks)
function evercraft:companions/handler/menu_v2/check_clicks
