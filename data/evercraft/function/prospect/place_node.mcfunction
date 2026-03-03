# Ore Node: Summon ore node entities at current position
# Run at the ground-level position where node should appear

# Data marker (stores spawn gametime for despawn calculation)
summon marker ~ ~ ~ {Tags:["ec.prospect","ec.prospect_data","ec.prospect_new"]}
execute store result entity @e[type=marker,tag=ec.prospect_new,limit=1,distance=..1] data.spawn_time long 1 run time query gametime
tag @e[type=marker,tag=ec.prospect_new,limit=1,distance=..1] remove ec.prospect_new

# Block display (visual ore — varies by dimension/depth)
# Default: raw_copper_block (overworld surface)
execute if predicate evercraft:in_overworld run summon block_display ~ ~ ~ {Tags:["ec.prospect","ec.prospect_visual"],block_state:{Name:"minecraft:raw_copper_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,-0.2f],scale:[0.4f,0.3f,0.4f]}}
# Overworld deep (Y < 0): raw_iron_block
execute if predicate evercraft:in_overworld positioned ~ 0 ~ if entity @s[y=-64,dy=63] as @e[type=block_display,tag=ec.prospect_visual,distance=..1,limit=1] run data merge entity @s {block_state:{Name:"minecraft:raw_iron_block"}}
# Nether: gilded_blackstone
execute if predicate evercraft:in_nether run summon block_display ~ ~ ~ {Tags:["ec.prospect","ec.prospect_visual"],block_state:{Name:"minecraft:gilded_blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,-0.2f],scale:[0.4f,0.3f,0.4f]}}
# End: purpur_block
execute if predicate evercraft:in_end run summon block_display ~ ~ ~ {Tags:["ec.prospect","ec.prospect_visual"],block_state:{Name:"minecraft:purpur_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,-0.2f],scale:[0.4f,0.3f,0.4f]}}

# Interaction entity (right-click target, slightly above ground)
summon interaction ~ ~0.15 ~ {Tags:["ec.prospect","ec.prospect_click"],width:0.8f,height:0.6f,response:1b}

# Spawn particle burst
particle dust{color:[0.7,0.7,0.8],scale:0.8} ~ ~0.2 ~ 0.2 0.15 0.2 0 8
particle minecraft:electric_spark ~ ~0.3 ~ 0.15 0.2 0.15 0.01 5
