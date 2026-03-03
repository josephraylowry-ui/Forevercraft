# ============================================================
# Hearthstone GUI — Check Clicks
# Run as: player with HS.InMenu
# ============================================================

# Close button
execute as @e[type=interaction,tag=HS.CloseBtn,distance=..5] if data entity @s interaction run function evercraft:housing/gui/click_close

# Upgrade button
execute as @e[type=interaction,tag=HS.UpgradeBtn,distance=..5] if data entity @s interaction run function evercraft:housing/gui/click_upgrade
