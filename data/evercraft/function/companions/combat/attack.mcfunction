# Pet Combat — Execute Attack on Target
# Context: @s = player, pc.target tag on target mob
# #pc_dmg ec.var = calculated damage, pet_name in storage

# Tag mob as hit by pet (for kill advancement detection)
tag @e[tag=pc.target,limit=1] add pc.pet_hit

# Visual: particle beam from pet to target
execute at @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] run particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.02 3
execute at @e[tag=pc.target,limit=1] run particle crit ~ ~1 ~ 0.3 0.5 0.3 0.1 15
execute at @e[tag=pc.target,limit=1] run particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 10

# Sound effect
execute at @e[tag=pc.target,limit=1] run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1.2
execute at @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] run playsound minecraft:entity.wolf.growl player @a ~ ~ ~ 0.6 1.4

# Apply damage via macro (damage command needs float)
function evercraft:companions/combat/do_damage with storage evercraft:pet_combat

# Apply pet-specific combat effect
function evercraft:companions/combat/apply_effect

# Notify player
execute store result score #pc_show ec.var run data get storage evercraft:pet_combat damage
tellraw @s [{text:"Your companion attacks! ",color:"gold"},{text:"(",color:"gray"},{score:{name:"#pc_dmg",objective:"ec.var"},color:"red"},{text:" damage)",color:"gray"}]

# Cleanup target tag
tag @e[tag=pc.target] remove pc.target
