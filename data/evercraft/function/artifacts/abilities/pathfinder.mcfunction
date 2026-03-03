# Cartographer's Lens - Pathfinder
# Speed I when standing on path blocks (dirt path, cobblestone, stone bricks, etc.)
# Called from tick function for players with the accessory

# Check if player has Cartographer's Lens in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"cartographers_lens"}] run return 0

# Check if standing on road/path blocks and grant speed
execute if block ~ ~-1 ~ #evercraft:path_blocks run effect give @s speed 2 0 true
execute if block ~ ~-0.5 ~ #evercraft:path_blocks run effect give @s speed 2 0 true

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
