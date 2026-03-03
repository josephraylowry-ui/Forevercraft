# Toggle pet info/memories GUI overlay
# Called as the player from on_info
# Toggles between pet grid and info screen overlay

# Must have an active pet
execute unless entity @s[tag=Pets.ActivePet] run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Summon a pet first.",color:"red"}]

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Check if info screen is already open → close it and return
scoreboard players set #was_info Pets.Calc 0
execute if entity @s[tag=Pets.InfoScreen] run scoreboard players set #was_info Pets.Calc 1
execute if entity @s[tag=Pets.InfoScreen] run function evercraft:companions/handler/menu_v2/close_info_screen
execute if score #was_info Pets.Calc matches 1 run return 0

# Otherwise open the info screen
function evercraft:companions/handler/menu_v2/show_info_screen
