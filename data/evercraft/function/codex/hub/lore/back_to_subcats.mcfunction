# Lore — Back to Sub-Category Picker
# Run as the player, at player, facing the anchor

# Kill set list content
kill @e[type=text_display,tag=Adv.LoreSetList,distance=..7]
kill @e[type=interaction,tag=Adv.LoreSetList,distance=..7]

# If we came from Lore Pages (dim 3, subcat 4), go back to dimensions instead
execute if score @s adv.gui_lore_dim matches 3 run return run function evercraft:codex/hub/lore/back_to_dims

# Otherwise go to sub-category picker
scoreboard players set @s adv.gui_page 2
function evercraft:codex/hub/lore/spawn_subcats
