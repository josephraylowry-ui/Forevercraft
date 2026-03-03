execute store result score $villager_pet mob_manager.technical run random value 1..10
execute if score $villager_pet mob_manager.technical matches 1..4 run data modify storage eden:temp mob_manager.villager.type set value "wolf"
execute if score $villager_pet mob_manager.technical matches 5..6 run data modify storage eden:temp mob_manager.villager.type set value "parrot"
execute if score $villager_pet mob_manager.technical matches 7..10 run data modify storage eden:temp mob_manager.villager.type set value "cat"

execute store result score $villager_age mob_manager.technical run data get entity @s Age
execute if score $villager_age mob_manager.technical matches 0.. run function evercraft:mobs/villager/pets/exec with storage eden:temp mob_manager.villager