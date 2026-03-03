advancement revoke @s only evercraft:companions/add_to_player
execute if data storage evercraft:companions uninstalled run return fail

scoreboard players operation #Search Pets.ID = @s Pets.ID
execute store result score @s Pets.Count if data entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets[]

execute if score @s Pets.Count matches 36.. run return run tellraw @s {text:"You have reached the maximum amount of pets!",color:"red"}

data modify storage evercraft:companions name set from entity @s SelectedItem.components."minecraft:profile".properties[1].value
execute if score @s Pets.Count matches 0..35 run return run function evercraft:companions/handler/database/check_duplicates with storage evercraft:companions
# Achievement tracking
scoreboard players add @s ach.pets_owned 1
