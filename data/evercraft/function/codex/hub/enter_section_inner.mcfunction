# Codex Hub — Enter Section Inner (Macro)
# Macro arg: section (1-7)
# Run as the player, at player, facing the menu anchor

# Set section and reset page
$scoreboard players set @s adv.gui_section $(section)
scoreboard players set @s adv.gui_page 1

# Kill hub content
kill @e[type=text_display,tag=Adv.HubContent,distance=..7]
kill @e[type=interaction,tag=Adv.HubContent,distance=..7]

# Spawn back button (shared across all sections)
function evercraft:codex/hub/spawn_back_button

# Update title per section (reads adv.gui_section scoreboard)
function evercraft:codex/hub/set_section_title

# Spawn section content
execute if score @s adv.gui_section matches 1 run function evercraft:advantage/gui/open
execute if score @s adv.gui_section matches 2 run function evercraft:codex/hub/challenges/spawn
execute if score @s adv.gui_section matches 3 run function evercraft:codex/hub/cosmetics/open
execute if score @s adv.gui_section matches 4 run function evercraft:codex/hub/artifacts/spawn_tiers
execute if score @s adv.gui_section matches 5 run function evercraft:codex/hub/journal/spawn_overview
execute if score @s adv.gui_section matches 6 run function evercraft:codex/hub/lore/spawn
execute if score @s adv.gui_section matches 7 run function evercraft:party/gui/open
execute if score @s adv.gui_section matches 8 run function evercraft:codex/hub/classes/spawn

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
