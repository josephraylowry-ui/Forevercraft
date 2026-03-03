# Codex GUI — Close
# Kills only THIS player's menu entities (session-isolated for multiplayer)

# Only proceed if in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Store our session for ownership check
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill only OUR menu elements (session-matched)
execute as @e[type=item_display,tag=Adv.MenuElement,distance=..7] if score @s adv.gui_session = #gui_stamp ec.temp run kill @s
execute as @e[type=text_display,tag=Adv.MenuElement,distance=..7] if score @s adv.gui_session = #gui_stamp ec.temp run kill @s
execute as @e[type=interaction,tag=Adv.MenuElement,distance=..7] if score @s adv.gui_session = #gui_stamp ec.temp run kill @s
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..7] if score @s adv.gui_session = #gui_stamp ec.temp run kill @s

# Remove player tags and reset state
tag @s remove Adv.InMenu
tag @s remove Adv.RespecMode
scoreboard players set @s adv.gui_page 0
scoreboard players set @s adv.gui_section 0

# Play close sound
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 0.8
