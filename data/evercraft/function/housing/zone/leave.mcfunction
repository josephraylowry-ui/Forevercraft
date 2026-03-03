# ============================================================
# Housing Zone — Player left their home zone
# Run as: player
# ============================================================

scoreboard players set @s hs.in_zone 0

# Remove DR modifier
attribute @s luck modifier remove evercraft:housing_dr

# Subtle leave notification (actionbar)
title @s actionbar [{text:"\u2302 ",color:"gray"},{text:"Left Home Zone",color:"dark_gray"}]
