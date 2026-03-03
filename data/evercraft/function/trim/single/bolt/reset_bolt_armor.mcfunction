# only works when you know that only one such item is there
# 1.21.5+: Inventory only contains slots 0-35 (no armor/offhand), so no need to filter them out
data modify storage trim_abilities:reset_armor item.container set from entity @s Inventory

$data modify storage trim_abilities:reset_armor item.slot_type set value '$(slot_type)'
execute if data storage trim_abilities:reset_armor {item:{slot_type:'weapon.'}} run data modify storage trim_abilities:reset_armor item.slot_index set value 'offhand'
execute if data storage trim_abilities:reset_armor {item:{slot_type:'weapon.'}} run data modify storage trim_abilities:reset_armor item.slot set value -106

execute if data storage trim_abilities:reset_armor {item:{slot_type:'hotbar.'}} store result storage trim_abilities:reset_armor item.slot_index int 1 run data get storage trim_abilities:reset_armor item.container[{components:{"minecraft:attribute_modifiers":[{id:"evercraft:trim/attack_damage"}]}}].Slot
execute if data storage trim_abilities:reset_armor {item:{slot_type:'hotbar.'}} run data modify storage trim_abilities:reset_armor item.slot set from storage trim_abilities:reset_armor item.slot_index

execute if data storage trim_abilities:reset_armor {item:{slot_type:'inventory.'}} store result score @s trim_flag run data get storage trim_abilities:reset_armor item.container[{components:{"minecraft:attribute_modifiers":[{id:"evercraft:trim/attack_damage"}]}}].Slot
execute if data storage trim_abilities:reset_armor {item:{slot_type:'inventory.'}} run scoreboard players remove @s trim_flag 9
execute if data storage trim_abilities:reset_armor {item:{slot_type:'inventory.'}} store result storage trim_abilities:reset_armor item.slot_index int 1 run scoreboard players get @s trim_flag
execute if data storage trim_abilities:reset_armor {item:{slot_type:'inventory.'}} run data modify storage trim_abilities:reset_armor item.slot set from storage trim_abilities:reset_armor item.slot_index

data modify storage trim_abilities:reset_armor item.components set from storage trim_abilities:reset_armor item.container[{components:{"minecraft:attribute_modifiers":[{id:"evercraft:trim/attack_damage"}]}}].components
data remove storage trim_abilities:reset_armor item.components."minecraft:attribute_modifiers"[{id:"evercraft:trim/attack_damage"}]
data remove storage trim_abilities:reset_armor item.components."minecraft:custom_data".trim_abilities
data remove storage trim_abilities:reset_armor item.components."minecraft:custom_data".single_bolt
function evercraft:trim/single/bolt/replace_armor_data with storage trim_abilities:reset_armor item

data remove storage trim_abilities:reset_armor item
scoreboard players reset @s trim_flag