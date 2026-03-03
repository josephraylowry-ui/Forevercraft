# Reset all pets for the player running this command
# Usage: /function evercraft:companions/reset_pets

# Store player's ID for marker lookup
scoreboard players operation #Search Pets.ID = @s Pets.ID

# Despawn active pet if one exists
execute if entity @s[tag=Pets.ActivePet] run function evercraft:companions/handler/active_pet/abilities/reset_perks
execute if entity @s[tag=Pets.ActivePet] run kill @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id]
execute if entity @s[tag=Pets.ActivePet] run tag @s remove Pets.ActivePet

# Close menu if open
execute if entity @s[tag=Pets.InMenu] run function evercraft:companions/handler/menu/despawn

# Clear the pet array on the player's marker entity
execute in minecraft:overworld run data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets set value []

# Reset pet count to 0
scoreboard players set @s Pets.Count 0

# Notify player
tellraw @s [{text:"All pets have been cleared from your collection!", color:"gold"}]
