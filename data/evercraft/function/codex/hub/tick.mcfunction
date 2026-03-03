# Codex Hub — Unified Tick
# Called every tick for players with menu open (any section)
# Handles: distance check, hold check, click routing by section

# Only run for players in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Store session for entity ownership filtering (used by all check_clicks)
scoreboard players operation #gui_owner ec.temp = @s adv.gui_session

# Close if player moves too far from OWN anchor (session-matched)
scoreboard players set #has_own_anchor ec.temp 0
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp run scoreboard players set #has_own_anchor ec.temp 1
execute if score #has_own_anchor ec.temp matches 0 run return run function evercraft:advantage/gui/close

# Close if player stops holding codex
execute unless items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] unless items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] run return run function evercraft:advantage/gui/close

# Back button check (universal — works in any section, session-filtered)
execute if score @s adv.gui_section matches 1.. as @e[type=interaction,tag=Adv.BackBtnClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/back_to_hub_click

# Route clicks based on active section
execute if score @s adv.gui_section matches 0 run function evercraft:codex/hub/check_clicks_hub
execute if score @s adv.gui_section matches 1 run function evercraft:advantage/gui/check_clicks
execute if score @s adv.gui_section matches 2 run function evercraft:codex/hub/challenges/check_clicks
execute if score @s adv.gui_section matches 3 run function evercraft:codex/hub/cosmetics/check_clicks
execute if score @s adv.gui_section matches 4 run function evercraft:codex/hub/artifacts/check_clicks
execute if score @s adv.gui_section matches 5 run function evercraft:codex/hub/journal/check_clicks
execute if score @s adv.gui_section matches 6 run function evercraft:codex/hub/lore/check_clicks
execute if score @s adv.gui_section matches 7 run function evercraft:party/gui/check_clicks
execute if score @s adv.gui_section matches 8 run function evercraft:codex/hub/classes/check_clicks

# Stamp any newly spawned entities with our session (catches section transitions)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[tag=Adv.MenuElement,distance=..3] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
