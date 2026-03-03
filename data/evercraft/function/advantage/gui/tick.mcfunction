# Advantage Trees GUI — Tick
# Called every tick for players with menu open
# Handles: click detection, distance/hold checks

# Only run for players in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Close if player moves too far from anchor
execute unless entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5] run return run function evercraft:advantage/gui/close

# Close if player stops holding codex
execute unless items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] unless items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] run return run function evercraft:advantage/gui/close

# Check for clicks
function evercraft:advantage/gui/check_clicks
