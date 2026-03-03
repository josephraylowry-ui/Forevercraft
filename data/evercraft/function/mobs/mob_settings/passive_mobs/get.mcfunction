$execute if data storage eden:settings mob_manager.$(type){allow_mob:"disabled"} run return run function evercraft:mobs/kill

$execute unless predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.$(type).scale_min"},"range":{"min":$(scale_max)}} store result storage eden:temp mob_manager.scale float 0.01 run random value $(scale_min)..$(scale_max)
$execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.$(type).scale_min"},"range":{"min":$(scale_max)}} store result storage eden:temp mob_manager.scale float 0.01 run data get storage eden:settings mob_manager.$(type).scale_max

$execute store result storage eden:temp mob_manager.health float 0.01 run attribute @s max_health base get $(health)
$execute store result storage eden:temp mob_manager.tempt_range float 0.01 run attribute @s tempt_range base get $(tempt_range)
$execute store result storage eden:temp mob_manager.follow_range float 0.01 run attribute @s follow_range base get $(follow_range)
$execute store result storage eden:temp mob_manager.move_speed float 0.01 run attribute @s movement_speed base get $(move_speed)
$execute store result storage eden:temp mob_manager.fly_speed float 0.01 run attribute @s flying_speed base get $(move_speed)
$execute store result storage eden:temp mob_manager.safe_fall float 0.01 run attribute @s safe_fall_distance base get $(safe_fall)

$execute if data storage eden:settings mob_manager.$(type){breed:"disabled"} run tag @s add mob_manager.settings.breed.disabled
$execute if data storage eden:settings mob_manager.$(type){drown:"disabled"} run tag @s add mob_manager.settings.drown.disabled
$execute if data storage eden:settings mob_manager.$(type){silent:"enabled"} run data modify entity @s Silent set value 1b
$execute if data storage eden:settings mob_manager.$(type){burn:"disabled"} run attribute @s burning_time base set 0
$execute if data storage eden:settings mob_manager.$(type){pickup:"disabled"} run data modify entity @s CanPickUpLoot set value 0b

$data modify entity @s DeathLootTable set value 'evercraft:mobs/entity/default/$(type)'

$execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"enabled"} run attribute @s waypoint_transmit_range base set $(locator_range)
execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"disabled"} run attribute @s waypoint_transmit_range base set 0
$data modify entity @s data.mob_manager.locator_bar set value {icon:"$(type)",color:"$(locator_color)",range:$(locator_range)}
$execute if data storage eden:settings mob_manager.misc{locator_assets:"disabled"} run waypoint modify @s color hex $(locator_color)
$execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run waypoint modify @s style set evercraft:mobs/$(type)
execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run waypoint modify @s color white

execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.jebspawning"},"range":{"min":0.01}} as @s[type=sheep] run function evercraft:mobs/jeb_sheep/set_name with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.brownmoospawning"},"range":{"min":0.01}} as @s[type=mooshroom] run function evercraft:mobs/brown_mooshroom with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.babymountspawning"},"range":{"min":0.01}} as @s[type=#evercraft:mobs/valid_for_baby_mount] at @s run function evercraft:mobs/baby_mount/init with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.killerrabbitspawning"},"range":{"min":0.01}} as @s[type=rabbit] run function evercraft:mobs/killer_rabbit with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.lefthanded"},"range":{"min":0.01}} run function evercraft:mobs/lefthanded with storage eden:settings mob_manager.misc
execute if data storage eden:settings mob_manager.misc{skeletonhorsetrap:"disabled"} as @s[type=skeleton_horse] run data modify entity @s SkeletonTrap set value 0b

execute as @s[type=villager] at @s run function evercraft:mobs/villager/init with storage eden:settings mob_manager.villager_settings
execute as @s[type=wandering_trader] at @s run function evercraft:mobs/wandering_trader/init

function evercraft:mobs/mob_settings/passive_mobs/exec with storage eden:temp mob_manager