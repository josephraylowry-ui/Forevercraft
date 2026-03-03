# Spawn the selected pet
# Called as player with {slot:N} macro

# Check pet data exists
$execute unless data storage evercraft:companions MenuDisplay[$(slot)] run return fail

# Copy pet data to spawn storage
$data modify storage evercraft:companions SelectedPet set from storage evercraft:companions MenuDisplay[$(slot)]

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Kill existing pet if any
execute if entity @s[tag=Pets.ActivePet] run kill @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id]
execute if entity @s[tag=Pets.ActivePet] run kill @e[type=interaction,tag=Pets.PetInteract,predicate=evercraft:companions/check_id]

# Clear any lingering level data from previous pet
scoreboard players reset #current_level Pets.EXP
scoreboard players reset #current_exp Pets.EXP
scoreboard players reset #exp_to_next_level Pets.EXP

# Set tags for pet spawn
tag @s add Pets.ActivePet
tag @s add Pets.Owner

# Summon pet item_display and set item data directly from storage (bypass barrel)
summon item_display ~ ~1.6 ~ {teleport_duration:12, Tags:[Pets.NewPet, Pet], CustomNameVisible:1b, item_display:"ground", item:{id:"player_head", count:1b}}
data modify entity @e[type=item_display, tag=Pets.NewPet, limit=1] item set from storage evercraft:companions SelectedPet
scoreboard players operation @e[type=item_display, tag=Pets.NewPet, limit=1] Pets.ID = @s Pets.ID

# Spawn interaction entity for petting/feeding
summon interaction ~ ~1.6 ~ {width:0.8f, height:0.8f, response:1b, Tags:[Pets.PetInteract, Pets.NewInteract]}
scoreboard players operation @e[type=interaction, tag=Pets.NewInteract, limit=1] Pets.ID = @s Pets.ID
tag @e[type=interaction, tag=Pets.NewInteract, limit=1] remove Pets.NewInteract

# Set visibility if hidden
execute if entity @s[tag=Pets.Hidden] run data modify entity @e[type=item_display, tag=Pets.NewPet, limit=1] view_range set value 0f

# Set custom name from item data
data modify entity @e[type=item_display, tag=Pets.NewPet, limit=1] CustomName set from storage evercraft:companions SelectedPet.components."minecraft:custom_name"

# Run ability selector
function evercraft:companions/handler/active_pet/abilities/pet_selector with entity @e[type=item_display, tag=Pets.NewPet, limit=1] item.components."minecraft:profile".properties[{name:"name"}]

tag @e[type=item_display, tag=Pets.NewPet, limit=1] remove Pets.NewPet
tag @s remove Pets.Owner

# Close the menu
function evercraft:companions/handler/menu_v2/close

# Notify player
tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Pet summoned!",color:"green"}]
