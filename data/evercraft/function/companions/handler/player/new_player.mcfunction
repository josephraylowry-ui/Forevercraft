tag @s add Pets.NewPlayer

scoreboard players operation @s Pets.ID = #Global Pets.ID
scoreboard players add #Global Pets.ID 1

recipe give @s evercraft:companions/menu

execute positioned 0 -60 0 summon marker run function evercraft:companions/handler/player/new_player_marker