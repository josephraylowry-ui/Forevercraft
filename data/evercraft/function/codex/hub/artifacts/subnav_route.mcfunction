# Artifact Collection — Sub-Nav Route
# Routes sub-nav click based on current page level
# Run as the player, at player, facing anchor

# Page 2 (categories) → go back to tiers
execute if score @s adv.gui_page matches 2 run function evercraft:codex/hub/artifacts/back_to_tiers

# Page 3+ (item list) → go back to categories
execute if score @s adv.gui_page matches 3.. run function evercraft:codex/hub/artifacts/back_to_categories
