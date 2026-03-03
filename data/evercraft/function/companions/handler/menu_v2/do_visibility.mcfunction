# Toggle active pet visibility
# Called as the player

# Must have an active pet
execute unless entity @s[tag=Pets.ActivePet] run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Summon a pet first.",color:"red"}]

# Toggle: if currently hidden, make visible; if visible, make hidden
# Store current state before toggling to prevent double-execution
execute store success score #didToggle Pets.Calc if entity @s[tag=Pets.Hidden]
execute if score #didToggle Pets.Calc matches 1 run function evercraft:companions/handler/player/visible_status
execute if score #didToggle Pets.Calc matches 0 run function evercraft:companions/handler/player/hidden_status

# Update the button text in menu to reflect new state
scoreboard players operation #Search Pets.ID = @s Pets.ID
execute if entity @s[tag=Pets.Hidden] as @e[type=text_display,tag=Pets.MenuVisText,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Hidden",color:"red",bold:true}
execute unless entity @s[tag=Pets.Hidden] as @e[type=text_display,tag=Pets.MenuVisText,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s text set value {text:"Visible",color:"green",bold:true}
