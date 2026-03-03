# Guidestone Menu — Close
# Run as the player

tag @s remove ec.gs_in_menu
tag @s remove ec.gs_wormhole_view
tag @s remove ec.gs_remote_menu
scoreboard players set @s ec.gs_page 0
scoreboard players set @s ec.gs_view 0

# Kill all menu elements nearby (distance 8 matches open's orphan cleanup range)
execute at @s run kill @e[type=text_display,tag=ec.gs_menu_el,distance=..8]
execute at @s run kill @e[type=interaction,tag=ec.gs_menu_el,distance=..8]
execute at @s run kill @e[type=item_display,tag=ec.gs_menu_el,distance=..8]

# Revoke use_lodestone advancement so it can re-trigger on next right-click
advancement revoke @s only evercraft:guidestone/use_lodestone

# Clear menu context from storage
data remove storage evercraft:guidestone menu_ctx
data remove storage eden:temp pd_remote

playsound minecraft:block.amethyst_block.hit master @s ~ ~ ~ 0.6 0.8
