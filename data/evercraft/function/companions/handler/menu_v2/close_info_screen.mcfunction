# Close Pet Info Overlay — Restore pet grid
# Run as: player in menu with Pets.InfoScreen tag
# Requires: #Search Pets.ID already set

tag @s remove Pets.InfoScreen

# Kill all overlay text entities
kill @e[type=text_display,tag=Pets.InfoOverlay,predicate=evercraft:companions/check_id]

# Restore pet grid visibility
execute as @e[type=item_display,tag=Pets.PetSlot,predicate=evercraft:companions/check_id] run data modify entity @s transformation.scale set value [0.3f,0.3f,0.3f]
execute as @e[type=interaction,tag=Pets.PetClick,predicate=evercraft:companions/check_id] run data modify entity @s width set value 0.55f
execute as @e[type=interaction,tag=Pets.PetClick,predicate=evercraft:companions/check_id] run data modify entity @s height set value 0.55f

# Restore ? button text
execute as @e[type=text_display,tag=Pets.MenuInfoText,predicate=evercraft:companions/check_id] run data modify entity @s text set value [{text:"[",color:"dark_gray"},{text:"?",color:"yellow",bold:true},{text:"]",color:"dark_gray"}]

# Restore title
execute as @e[type=text_display,tag=Pets.MenuTitle,predicate=evercraft:companions/check_id] run data modify entity @s text set value {text:"Companion Catalogue",color:"gold",bold:true}

# Sound
playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1.2
