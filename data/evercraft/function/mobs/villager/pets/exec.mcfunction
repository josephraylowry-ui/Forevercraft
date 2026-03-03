$summon minecraft:$(type) ~ ~ ~ {Tags:["mob_manager.villager_pet"]}
$data modify entity @n[type=$(type),tag=mob_manager.villager_pet,tag=!mob_manager.has_owner,distance=..1] owner set from entity @s UUID
$tag @n[type=$(type),tag=!mob_manager.has_owner,distance=..1] add mob_manager.has_owner