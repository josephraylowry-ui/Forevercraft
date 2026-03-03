# Switch to page 2
# Called as player

# Only allow if on page 1 and has more than 18 pets
execute unless score @s Pets.MenuPage matches 1 run return fail
execute unless score #PetCount Pets.Menu matches 19.. run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"No more pages.",color:"gray"}]

# Set to page 2
scoreboard players set @s Pets.MenuPage 2

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2

# Update page info text
execute as @e[type=text_display,tag=Pets.MenuPageInfo,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Page 2",color:"gray"}

# Update arrow colors (prev becomes active, next grays out)
execute as @e[type=text_display,tag=Pets.MenuPrev,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"◀",color:"green"}
execute as @e[type=text_display,tag=Pets.MenuNext,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"▶",color:"gray"}

# Load page 2 pets (18-35)
scoreboard players operation #Search Pets.ID = @s Pets.ID
execute in overworld positioned 0 -60 0 as @n[distance=..10,type=marker,tag=Pets.Marker,predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu_v2/load_page2
