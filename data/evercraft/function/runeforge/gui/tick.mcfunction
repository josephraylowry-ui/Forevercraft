# Runeforge GUI — Per-tick (called from main tick for RF.InMenu players)
# Check distance and route clicks

# Auto-close if player moved too far from any runeforge marker
execute unless entity @e[type=marker,tag=RF.Marker,distance=..6] run function evercraft:runeforge/gui/close
execute unless entity @s[tag=RF.InMenu] run return 0

# Check clicks
function evercraft:runeforge/gui/check_clicks
