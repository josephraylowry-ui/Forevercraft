# Process player interaction with pet
# Run as player

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Track whether any interaction succeeded
scoreboard players set #didInteract Pets.Calc 0

# Check if holding food - try feeding first
execute store success score #didFeed Pets.Calc run function evercraft:companions/handler/relationship/feed/detect
execute if score #didFeed Pets.Calc matches 1 run scoreboard players set #didInteract Pets.Calc 1

# If didn't feed (no valid food), try petting
execute if score #didFeed Pets.Calc matches 0 store success score #didInteract Pets.Calc run function evercraft:companions/handler/relationship/pet/process

# Achievement tracking — only count if an interaction actually happened (not on cooldown)
execute if score #didInteract Pets.Calc matches 1 run scoreboard players add @s ach.pet_interacts 1
