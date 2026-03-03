# Show relationship status above pet
# Run as player with active pet

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Load current stats
function evercraft:companions/handler/relationship/load_rp

# Show particles based on level
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] if score @s Pets.RelLevel matches 0 run particle smoke ~ ~0.3 ~ 0.1 0.1 0.1 0.01 2
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] if score @s Pets.RelLevel matches 1..2 run particle happy_villager ~ ~0.3 ~ 0.1 0.1 0.1 0 1
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] if score @s Pets.RelLevel matches 3..4 run particle heart ~ ~0.3 ~ 0.1 0.1 0.1 0 1
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] if score @s Pets.RelLevel matches 5 run particle totem_of_undying ~ ~0.3 ~ 0.1 0.1 0.1 0 2
