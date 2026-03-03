# Lore — Enter Sub-Category (Macro)
# Macro arg: subcat (1=biome, 2=structure, 3=universal)
# Run as the player, at player, facing the anchor

# Store selected sub-category
$scoreboard players set @s adv.gui_lore_subcat $(subcat)

# Kill sub-category picker content
kill @e[type=text_display,tag=Adv.LoreSubPick,distance=..7]
kill @e[type=interaction,tag=Adv.LoreSubPick,distance=..7]

# Move to set list page (spawn_set_list resolves its own pool)
scoreboard players set @s adv.gui_page 3
function evercraft:codex/hub/lore/spawn_set_list

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
