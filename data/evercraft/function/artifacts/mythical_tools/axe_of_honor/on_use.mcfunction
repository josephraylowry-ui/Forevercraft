# Axe of Honor - On Use (Shift + Right-Click)
# Called when player uses netherite axe, checks if it's Axe of Honor + sneaking

# Only proceed if holding Axe of Honor
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"axe_of_honor"}] run return 0

# Only proceed if sneaking (shift + right-click)
execute unless predicate evercraft:is_sneaking run return 0

# Get the block the player is looking at (raycast)
scoreboard players set #axe_use_ray ec.temp 0
execute at @s anchored eyes positioned ^ ^ ^0.5 run function evercraft:artifacts/mythical_tools/axe_of_honor/raycast
