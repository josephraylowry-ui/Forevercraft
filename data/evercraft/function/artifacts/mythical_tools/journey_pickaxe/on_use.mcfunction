# Journey Pickaxe - On Use (right-click fallback)
# Pickaxes have no right-click action, so this only fires in rare edge cases
# Main ability is sneak-activated (see check.mcfunction / sneak_activate.mcfunction)

# Only proceed if holding Journey Pickaxe
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] run return 0

# Toggle mode on right-click
function evercraft:artifacts/mythical_tools/journey_pickaxe/toggle_mode
