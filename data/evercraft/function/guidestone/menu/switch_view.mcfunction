# Guidestone Menu — Switch View
# Macro arg: operation ("add" = next view, "remove" = previous view)
# Run as/at the player
# Views: 1 = Local Network, 2 = Interdimensional, 3 = Wormhole

# Save current view before changing
scoreboard players operation #gs_old_view ec.gs_temp = @s ec.gs_view

# Calculate new view: add 1 or remove 1, then wrap 1-3
$execute if score @s ec.gs_view matches 1.. run scoreboard players $(operation) @s ec.gs_view 1
execute if score @s ec.gs_view matches 0 run scoreboard players set @s ec.gs_view 3
execute if score @s ec.gs_view matches 4 run scoreboard players set @s ec.gs_view 1

# GATE: If view 2 (interdimensional) and guidestone is NOT primed, deny and STAY on current page
# Set a flag, then revert, then check the flag to return
scoreboard players set #gs_denied ec.gs_temp 0
execute if score @s ec.gs_view matches 2 if data storage evercraft:guidestone {menu_ctx:{primed:0b}} run scoreboard players set #gs_denied ec.gs_temp 1
execute if score #gs_denied ec.gs_temp matches 1 run tellraw @s [{text:"[Guidestone] ",color:"dark_purple"},{text:"The guidestone seemingly can't pass the barrier... ",color:"gray",italic:true},{text:"maybe something could allow it to pierce through?",color:"dark_purple",italic:true}]
execute if score #gs_denied ec.gs_temp matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
execute if score #gs_denied ec.gs_temp matches 1 run scoreboard players operation @s ec.gs_view = #gs_old_view ec.gs_temp
execute if score #gs_denied ec.gs_temp matches 1 run return 0

# Kill all view-specific content (slot elements, but keep shared shell)
execute at @s run kill @e[type=text_display,tag=ec.gs_slot_el,distance=..5]
execute at @s run kill @e[type=interaction,tag=ec.gs_slot_el,distance=..5]

# Reset page to 1 for the new view
scoreboard players set @s ec.gs_page 1

# Update title text based on view
execute if score @s ec.gs_view matches 1 as @e[type=text_display,tag=ec.gs_menu_title,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_purple"},{text:"Local Network",color:"light_purple",bold:true},{text:" \u2726",color:"dark_purple"}]
execute if score @s ec.gs_view matches 2 as @e[type=text_display,tag=ec.gs_menu_title,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_purple"},{text:"Interdimensional",color:"dark_aqua",bold:true},{text:" \u2726",color:"dark_purple"}]
execute if score @s ec.gs_view matches 3 as @e[type=text_display,tag=ec.gs_menu_title,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2726 ",color:"dark_purple"},{text:"Wormhole",color:"light_purple",bold:true},{text:" \u2726",color:"dark_purple"}]

# Spawn new view content
execute if score @s ec.gs_view matches 1 run function evercraft:guidestone/menu/refresh
execute if score @s ec.gs_view matches 2 run function evercraft:guidestone/menu/refresh_interdim
execute if score @s ec.gs_view matches 3 run function evercraft:guidestone/wormhole/show

# Page switch sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
