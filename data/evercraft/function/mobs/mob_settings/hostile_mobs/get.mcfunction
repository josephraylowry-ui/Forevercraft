$execute if data storage eden:settings mob_manager.$(type){allow_mob:"disabled"} run return run function evercraft:mobs/kill

$execute unless predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.$(type).scale_min"},"range":{"min":$(scale_max)}} store result storage eden:temp mob_manager.scale float 0.01 run random value $(scale_min)..$(scale_max)
$execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.$(type).scale_min"},"range":{"min":$(scale_max)}} store result storage eden:temp mob_manager.scale float 0.01 run data get storage eden:settings mob_manager.$(type).scale_max

execute if data storage eden:settings mob_manager.misc{creeperfuse:"enabled"} as @s[type=creeper] store result storage eden:temp mob_manager.fuse float 1 run data get storage eden:temp mob_manager.scale 30
$execute store result storage eden:temp mob_manager.health float 0.01 run attribute @s max_health base get $(health)
$execute store result storage eden:temp mob_manager.follow_range float 0.01 run attribute @s follow_range base get $(follow_range)
$execute store result storage eden:temp mob_manager.move_speed float 0.01 run attribute @s movement_speed base get $(move_speed)
$execute store result storage eden:temp mob_manager.safe_fall float 0.01 run attribute @s safe_fall_distance base get $(safe_fall)
$execute store result storage eden:temp mob_manager.attck_dmg float 0.01 run attribute @s attack_damage base get $(attck_dmg)

$execute if data storage eden:settings mob_manager.$(type){drown:"disabled"} run tag @s add mob_manager.settings.drown.disabled
$execute if data storage eden:settings mob_manager.$(type){silent:"enabled"} run data modify entity @s Silent set value 1b
$execute if data storage eden:settings mob_manager.$(type){burn:"disabled"} run attribute @s burning_time base set 0
$execute if data storage eden:settings mob_manager.$(type){pickup:"disabled"} run data modify entity @s CanPickUpLoot set value 0b
execute as @s[type=shulker] if data storage eden:settings mob_manager.misc{shulkercolor:"enabled"} run function evercraft:mobs/shulker_color with storage eden:temp mob_manager

$data modify entity @s DeathLootTable set value 'evercraft:mobs/entity/default/$(type)'

$execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"enabled"} run attribute @s waypoint_transmit_range base set $(locator_range)
execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"disabled"} run attribute @s waypoint_transmit_range base set 0
$data modify entity @s data.mob_manager.locator_bar set value {icon:"$(type)",color:"$(locator_color)",range:$(locator_range)}
$execute if data storage eden:settings mob_manager.misc{locator_assets:"disabled"} run waypoint modify @s color hex $(locator_color)
$execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run waypoint modify @s style set evercraft:mobs/$(type)
execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run waypoint modify @s color white

execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.illusionerspawning"},"range":{"min":0.01}} as @s[type=evoker] at @s run function evercraft:mobs/illusioner with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.immunezombie"},"range":{"min":0.01}} run function evercraft:mobs/immune_zombification with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.lefthanded"},"range":{"min":0.01}} run function evercraft:mobs/lefthanded with storage eden:settings mob_manager.misc

execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.mob_equipment.misc.mobheads"},"range":{"min":0.01}} as @s[type=#evercraft:mobs/valid_for_playerheads,type=!bogged] unless items entity @s armor.head * run function evercraft:mobs/mob_equipment/mobheads/init with storage eden:settings mob_manager.mob_equipment.misc
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.mob_equipment.misc.playerheads"},"range":{"min":0.01}} as @s[type=#evercraft:mobs/valid_for_playerheads] unless items entity @s armor.head * run function evercraft:mobs/mob_equipment/playerheads/init with storage eden:settings mob_manager.mob_equipment.misc

execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.mob_equipment.head.equipchance"},"range":{"min":0.01}} unless items entity @s armor.head * run function evercraft:mobs/mob_equipment/equip_armor with storage eden:settings mob_manager.mob_equipment.head
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.mob_equipment.chest.equipchance"},"range":{"min":0.01}} unless items entity @s armor.chest * run function evercraft:mobs/mob_equipment/equip_armor with storage eden:settings mob_manager.mob_equipment.chest
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.mob_equipment.legs.equipchance"},"range":{"min":0.01}} unless items entity @s armor.legs * run function evercraft:mobs/mob_equipment/equip_armor with storage eden:settings mob_manager.mob_equipment.legs
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.mob_equipment.feet.equipchance"},"range":{"min":0.01}} unless items entity @s armor.feet * run function evercraft:mobs/mob_equipment/equip_armor with storage eden:settings mob_manager.mob_equipment.feet
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.mob_equipment.mainhand.equipchance"},"range":{"min":0.01}} run function evercraft:mobs/mob_equipment/equip_weapon with storage eden:settings mob_manager.mob_equipment.mainhand
execute if predicate {"condition":"minecraft:value_check",value:{type:"minecraft:storage","storage":"eden:settings","path":"mob_manager.mob_equipment.offhand.equipchance"},"range":{"min":0.01}} run function evercraft:mobs/mob_equipment/equip_weapon with storage eden:settings mob_manager.mob_equipment.offhand

data modify storage eden:temp mob_manager.vex_equip set from storage eden:settings mob_manager.mob_equipment.misc.vex_equip

function evercraft:mobs/mob_settings/hostile_mobs/exec with storage eden:temp mob_manager