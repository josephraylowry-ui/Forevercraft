# ============================================================
# Campfire Kitchen GUI — Per-Tick
# Runs as each player with CK.InMenu tag (from tick.mcfunction)
# Validates menu state and dispatches click checks
# ============================================================

# Must still have the tag
execute unless entity @s[tag=CK.InMenu] run return 0

# Distance check — close if too far from anchor
execute unless entity @e[type=marker,tag=CK.Anchor,distance=..5] run return run function evercraft:cooking/gui/close

# Must be holding utensil
execute unless predicate evercraft:cooking/holding_utensil run return run function evercraft:cooking/gui/close

# Check for clicks
function evercraft:cooking/gui/check_clicks
