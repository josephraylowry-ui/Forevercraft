# Portal Dial — Read guidestone binding data from offhand item
execute store result score #pd_remote_id ec.gs_temp run data get entity @s equipment.offhand.components."minecraft:custom_data".gs_bound_id
data modify storage eden:temp pd_remote.dim set from entity @s equipment.offhand.components."minecraft:custom_data".gs_bound_dim
data modify storage eden:temp pd_remote.primed set from entity @s equipment.offhand.components."minecraft:custom_data".gs_bound_primed
data modify storage eden:temp pd_remote.name set from entity @s equipment.offhand.components."minecraft:custom_data".gs_bound_name
