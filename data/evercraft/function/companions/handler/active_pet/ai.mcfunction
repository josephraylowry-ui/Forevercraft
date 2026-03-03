tag @s add Pets.Owner
scoreboard players operation #Search Pets.ID = @s Pets.ID

# --------------------------------------------------------------------------------- #

# Test for active pet that is in idle state and activate it again
execute as @s[tag=!Pets.Hidden] as @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, nbt={view_range:0f}] run return run function evercraft:companions/handler/active_pet/no_pet_found

# Test for duplicate active pets and remove them
execute store result score @s Pets.Temp if entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id]
execute if score @s Pets.Temp matches 2.. as @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id] run function evercraft:companions/handler/active_pet/remove_duplicates

# --------------------------------------------------------------------------------- #

execute as @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id] at @s run function evercraft:companions/handler/active_pet/movement

# Pet specific AI
execute as @s[tag=Pets.Penguin] at @s align xyz if block ~.5 ~ ~.5 air if block ~.5 ~-1 ~.5 water run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 frosted_ice[age=2] replace water

# Experience gain detection
execute if score @s Pets.PlayerEXP > @s Pets.PreviousPlayerEXP as @e[distance=..50, type=item_display, tag=Pet, predicate=evercraft:companions/check_id] run function evercraft:companions/handler/active_pet/leveling/exp_gain

# Relationship system - check for feeding/petting interactions
execute as @e[type=interaction, tag=Pets.PetInteract, predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/relationship/on_interact

# Tick down cooldowns
execute if score @s Pets.FeedCD matches 1.. run scoreboard players remove @s Pets.FeedCD 1
execute if score @s Pets.PetCD matches 1.. run scoreboard players remove @s Pets.PetCD 1

# --------------------------------------------------------------------------------- #

tag @s remove Pets.Owner