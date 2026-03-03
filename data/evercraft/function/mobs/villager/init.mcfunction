execute if data storage eden:settings mob_manager.villager_settings{customname:"enabled"} run function evercraft:mobs/villager/names/init

$execute if predicate {"condition":"minecraft:random_chance","chance":$(pet)} run function evercraft:mobs/villager/pets/init