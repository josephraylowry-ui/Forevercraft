# Lore — Enter Dimension (Macro)
# Macro arg: dim (0=OW, 1=Nether, 2=End, 3=Lore)
# Run as the player, at player, facing the anchor

# Store selected dimension
$scoreboard players set @s adv.gui_lore_dim $(dim)

# Kill dimension picker content
kill @e[type=text_display,tag=Adv.LoreDimPick,distance=..7]
kill @e[type=interaction,tag=Adv.LoreDimPick,distance=..7]

# Lore Pages (dim 3) skips sub-category — goes straight to set list
execute if score @s adv.gui_lore_dim matches 3 run scoreboard players set @s adv.gui_lore_subcat 4
execute if score @s adv.gui_lore_dim matches 3 run scoreboard players set @s adv.gui_page 3
execute if score @s adv.gui_lore_dim matches 3 run function evercraft:codex/hub/lore/spawn_set_list
execute if score @s adv.gui_lore_dim matches 3 run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
execute if score @s adv.gui_lore_dim matches 3 run return 0

# OW/Nether/End → show sub-category picker
scoreboard players set @s adv.gui_page 2
function evercraft:codex/hub/lore/spawn_subcats
