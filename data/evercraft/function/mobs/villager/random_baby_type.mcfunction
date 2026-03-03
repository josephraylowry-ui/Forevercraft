data modify storage eden:temp mob_manager.villager.age set from entity @s Age
execute store result score $rolled_type mob_manager.technical run random value 1..7

execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:temp","path":"mob_manager.villager.age"},"range":{"min":0}} run return fail
execute if score $rolled_type mob_manager.technical matches 1 run data modify entity @s villager_data.type set value "desert"
execute if score $rolled_type mob_manager.technical matches 2 run data modify entity @s villager_data.type set value "jungle"
execute if score $rolled_type mob_manager.technical matches 3 run data modify entity @s villager_data.type set value "plains"
execute if score $rolled_type mob_manager.technical matches 4 run data modify entity @s villager_data.type set value "savanna"
execute if score $rolled_type mob_manager.technical matches 5 run data modify entity @s villager_data.type set value "swamp"
execute if score $rolled_type mob_manager.technical matches 6 run data modify entity @s villager_data.type set value "snow"
execute if score $rolled_type mob_manager.technical matches 7 run data modify entity @s villager_data.type set value "taiga"