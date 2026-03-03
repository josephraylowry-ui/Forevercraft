advancement revoke @s only evercraft:companions/menu/despawn
execute if data storage evercraft:companions uninstalled run return fail

execute anchored eyes positioned ^ ^ ^ run summon item_display ~ ~-.4 ~ {Tags:[Pets.MenuVehicle, Pets.New], Passengers:[{id:"chest_minecart", Tags:[Pets.PetMenu, Pets.New, Pets.Invisible], Invulnerable:1b, CustomNameVisible:0b, CustomName:{text:"Companion Catalogue"}, DisplayState:{Name:"barrier"}}]}

scoreboard players operation @e[distance=..5, type=item_display, tag=Pets.New] Pets.ID = @s Pets.ID
scoreboard players operation @e[distance=..5, type=chest_minecart, tag=Pets.New] Pets.ID = @s Pets.ID
tag @e[distance=..5, type=item_display, tag=Pets.New] remove Pets.New
tag @e[distance=..5, type=chest_minecart, tag=Pets.New] remove Pets.New

tag @s add Pets.ActiveMenu