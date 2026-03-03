execute store result score $mob_manager.trim_material mob_manager.technical run random value 1..10

$execute if score $mob_manager.trim_material mob_manager.technical matches 1 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value iron
$execute if score $mob_manager.trim_material mob_manager.technical matches 2 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value copper
$execute if score $mob_manager.trim_material mob_manager.technical matches 3 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value gold
$execute if score $mob_manager.trim_material mob_manager.technical matches 4 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value lapis
$execute if score $mob_manager.trim_material mob_manager.technical matches 5 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value emerald
$execute if score $mob_manager.trim_material mob_manager.technical matches 6 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value diamond
$execute if score $mob_manager.trim_material mob_manager.technical matches 7 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value netherite
$execute if score $mob_manager.trim_material mob_manager.technical matches 8 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value redstone
$execute if score $mob_manager.trim_material mob_manager.technical matches 9 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value amethyst
$execute if score $mob_manager.trim_material mob_manager.technical matches 10 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_material set value quartz