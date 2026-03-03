execute store result score $mob_manager.trim_pattern mob_manager.technical run random value 1..18

$execute if score $mob_manager.trim_pattern mob_manager.technical matches 1 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value coast
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 2 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value dune
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 3 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value eye
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 4 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value host
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 5 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value raiser
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 6 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value rib
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 7 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value sentry
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 8 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value shaper
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 9 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value silence
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 10 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value snout
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 11 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value spire
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 12 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value tide
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 13 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value vex
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 14 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value ward
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 15 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value wayfinder
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 16 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value wild
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 17 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value bolt
$execute if score $mob_manager.trim_pattern mob_manager.technical matches 18 run return run data modify storage eden:settings mob_manager.mob_equipment.$(slot).trim_pattern set value flow