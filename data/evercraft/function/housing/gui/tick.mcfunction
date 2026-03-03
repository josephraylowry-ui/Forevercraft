# ============================================================
# Hearthstone GUI — Tick
# Called every tick for players with HS.InMenu tag
# Run as: player, at player position
# ============================================================

execute unless entity @s[tag=HS.InMenu] run return 0

# Close if too far from hearthstone
execute unless entity @e[type=marker,tag=HS.Marker,distance=..8] run return run function evercraft:housing/gui/close

# Check for clicks
function evercraft:housing/gui/check_clicks
