# Guidestone Wormhole — Wormhole button clicked on network page
# Run as the interaction entity (ec.gs_wh_btn)
# Opens the wormhole confirmation screen

# Clear interaction data
data remove entity @s interaction

# Switch to wormhole view for the nearest player in menu
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] at @s run function evercraft:guidestone/wormhole/show
