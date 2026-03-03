# Journey Shovel - On Use (Shift + Right-Click)
# Checks if holding Journey Shovel + sneaking and triggers 3x3 dig mode

# Only proceed if holding Journey Shovel
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"journey_shovel"}] run return 0

# Only proceed if sneaking (shift + right-click)
execute unless predicate evercraft:is_sneaking run return 0

# Reset raycast distance counter
scoreboard players set #raycast_dist ec.temp 0

# Get the block the player is looking at (raycast)
execute at @s anchored eyes positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/journey_shovel/raycast
