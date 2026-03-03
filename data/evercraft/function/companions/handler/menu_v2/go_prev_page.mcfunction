# Switch to page 1
# Called as player

# Only allow if on page 2
execute unless score @s Pets.MenuPage matches 2 run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Already on first page.",color:"gray"}]

# Set to page 1
scoreboard players set @s Pets.MenuPage 1

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2

# Update page info text
execute as @e[type=text_display,tag=Pets.MenuPageInfo,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Page 1",color:"gray"}

# Update arrow colors (next becomes active, prev grays out)
execute as @e[type=text_display,tag=Pets.MenuPrev,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"◀",color:"gray"}
execute as @e[type=text_display,tag=Pets.MenuNext,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"▶",color:"green"}

# Load page 1 pets (0-17)
scoreboard players operation #Search Pets.ID = @s Pets.ID
execute in overworld positioned 0 -60 0 as @n[distance=..10,type=marker,tag=Pets.Marker,predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu_v2/load_page1
