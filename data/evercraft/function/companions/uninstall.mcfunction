data modify storage evercraft:companions uninstalled set value 1b

execute as @a run function evercraft:companions/handler/active_pet/abilities/reset_perks

scoreboard objectives remove Pets.Timer
scoreboard objectives remove Pets.ID
scoreboard objectives remove Pets.Count
scoreboard objectives remove Pets.Menu
scoreboard objectives remove Pets.Calc
scoreboard objectives remove Pets.EXP
scoreboard objectives remove Pets.PlayerEXP
scoreboard objectives remove Pets.PreviousPlayerEXP
team remove Pets.ImmuneToWarden

data remove storage evercraft:companions constants
data remove storage evercraft:companions Itt
data remove storage evercraft:companions name
data remove storage evercraft:companions leveling
data remove storage evercraft:companions modifyPet
data remove storage evercraft:companions math
data remove storage evercraft:companions pet_display

tag @a remove Pets.ActiveMenu
tag @a remove Pets.ActivePet
tag @a remove Pets.InMenu

kill @e[type=item_display,tag=Pet]
kill @e[type=marker,tag=Pets.Marker]
kill @e[type=item_display,tag=Pets.MenuVehicle]
kill @e[type=chest_minecart,tag=Pets.PetMenu]

execute in overworld run forceload remove 0 0 0 0
execute in overworld run setblock 0 -63 0 bedrock replace

execute in overworld unless block 0 -63 0 bedrock run tellraw @a {text:"Something went wrong in the installation proces - error:b1", color:"red",bold:true}
execute in overworld if block 0 -63 0 bedrock run tellraw @a {text:"Successfully uninstalled!", color:"red",bold:true}
