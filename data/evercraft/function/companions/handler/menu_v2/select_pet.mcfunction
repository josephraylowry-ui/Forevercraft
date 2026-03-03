# Handle pet slot click
# Called as the interaction entity with {slot:N} macro
# $slot = 0-17 (index in MenuDisplay storage)

# Clear the interaction data so it doesn't trigger again
data remove entity @s interaction

# Play click sound
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0

# Calculate actual pet index based on page
# Page 1: slots 0-17 = pets 0-17
# Page 2: slots 0-17 = pets 18-35
$execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu_v2/spawn_selected_pet {slot:$(slot)}
