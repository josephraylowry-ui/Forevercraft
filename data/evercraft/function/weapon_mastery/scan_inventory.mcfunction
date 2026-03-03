# Scan all player slots for awakened weapons and distribute XP
# Called from xp_check_all when XP is gained
# Mainhand is already processed by add_xp — skip the selected hotbar slot

# Quick gate: any awakened weapons in inventory or offhand at all?
execute unless items entity @s container.* *[custom_data~{awakened:1b}] unless items entity @s weapon.offhand *[custom_data~{awakened:1b}] run return 0

# Get selected hotbar slot to skip (mainhand already processed)
execute store result score #wm_sel ec.var run data get entity @s SelectedItemSlot

# Offhand
execute if items entity @s weapon.offhand *[custom_data~{awakened:1b}] run function evercraft:weapon_mastery/add_xp_slot {item_slot:"weapon.offhand",data_path:"equipment.offhand"}

# Hotbar slots 0-8 (skip selected — already processed as mainhand)
function evercraft:weapon_mastery/check_inv_slot {slot:"0"}
function evercraft:weapon_mastery/check_inv_slot {slot:"1"}
function evercraft:weapon_mastery/check_inv_slot {slot:"2"}
function evercraft:weapon_mastery/check_inv_slot {slot:"3"}
function evercraft:weapon_mastery/check_inv_slot {slot:"4"}
function evercraft:weapon_mastery/check_inv_slot {slot:"5"}
function evercraft:weapon_mastery/check_inv_slot {slot:"6"}
function evercraft:weapon_mastery/check_inv_slot {slot:"7"}
function evercraft:weapon_mastery/check_inv_slot {slot:"8"}

# Main inventory slots 9-35
function evercraft:weapon_mastery/check_inv_slot {slot:"9"}
function evercraft:weapon_mastery/check_inv_slot {slot:"10"}
function evercraft:weapon_mastery/check_inv_slot {slot:"11"}
function evercraft:weapon_mastery/check_inv_slot {slot:"12"}
function evercraft:weapon_mastery/check_inv_slot {slot:"13"}
function evercraft:weapon_mastery/check_inv_slot {slot:"14"}
function evercraft:weapon_mastery/check_inv_slot {slot:"15"}
function evercraft:weapon_mastery/check_inv_slot {slot:"16"}
function evercraft:weapon_mastery/check_inv_slot {slot:"17"}
function evercraft:weapon_mastery/check_inv_slot {slot:"18"}
function evercraft:weapon_mastery/check_inv_slot {slot:"19"}
function evercraft:weapon_mastery/check_inv_slot {slot:"20"}
function evercraft:weapon_mastery/check_inv_slot {slot:"21"}
function evercraft:weapon_mastery/check_inv_slot {slot:"22"}
function evercraft:weapon_mastery/check_inv_slot {slot:"23"}
function evercraft:weapon_mastery/check_inv_slot {slot:"24"}
function evercraft:weapon_mastery/check_inv_slot {slot:"25"}
function evercraft:weapon_mastery/check_inv_slot {slot:"26"}
function evercraft:weapon_mastery/check_inv_slot {slot:"27"}
function evercraft:weapon_mastery/check_inv_slot {slot:"28"}
function evercraft:weapon_mastery/check_inv_slot {slot:"29"}
function evercraft:weapon_mastery/check_inv_slot {slot:"30"}
function evercraft:weapon_mastery/check_inv_slot {slot:"31"}
function evercraft:weapon_mastery/check_inv_slot {slot:"32"}
function evercraft:weapon_mastery/check_inv_slot {slot:"33"}
function evercraft:weapon_mastery/check_inv_slot {slot:"34"}
function evercraft:weapon_mastery/check_inv_slot {slot:"35"}
