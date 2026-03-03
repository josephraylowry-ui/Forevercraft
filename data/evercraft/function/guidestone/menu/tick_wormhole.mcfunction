# Guidestone Menu — Wormhole page tick (check confirm click)
# Run as player at their position (already verified in_menu and wormhole_view)

# Check Wormhole confirm click — executes wormhole teleport
execute as @e[type=interaction,tag=ec.gs_wh_confirm,distance=..5] if data entity @s interaction run function evercraft:guidestone/wormhole/on_confirm
