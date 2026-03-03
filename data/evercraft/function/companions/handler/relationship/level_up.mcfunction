# Called when relationship level increases
# Run as player

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Get level name for message
scoreboard players set #levelName Pets.Calc 0
execute if score @s Pets.RelLevel matches 1 run data modify storage evercraft:companions temp.levelName set value "Friendly"
execute if score @s Pets.RelLevel matches 2 run data modify storage evercraft:companions temp.levelName set value "Bonded"
execute if score @s Pets.RelLevel matches 3 run data modify storage evercraft:companions temp.levelName set value "Devoted"
execute if score @s Pets.RelLevel matches 4 run data modify storage evercraft:companions temp.levelName set value "Soulbound"
execute if score @s Pets.RelLevel matches 5 run data modify storage evercraft:companions temp.levelName set value "Eternal Bond"

# Play celebration effects
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run particle totem_of_undying ~ ~0.5 ~ 0.5 0.5 0.5 0.1 30
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2

# Show message with multiplier
execute if score @s Pets.RelLevel matches 1 run tellraw @s [{text:"Your bond with "},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" has grown to "},{text:"Friendly",color:"green",bold:true},{text:"! "},{text:"(1.1x ability multiplier)",color:"yellow"}]
execute if score @s Pets.RelLevel matches 2 run tellraw @s [{text:"Your bond with "},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" has grown to "},{text:"Bonded",color:"aqua",bold:true},{text:"! "},{text:"(1.2x ability multiplier)",color:"yellow"}]
execute if score @s Pets.RelLevel matches 3 run tellraw @s [{text:"Your bond with "},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" has grown to "},{text:"Devoted",color:"blue",bold:true},{text:"! "},{text:"(1.3x ability multiplier)",color:"yellow"}]
execute if score @s Pets.RelLevel matches 4 run tellraw @s [{text:"Your bond with "},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" has grown to "},{text:"Soulbound",color:"light_purple",bold:true},{text:"! "},{text:"(1.4x ability multiplier)",color:"yellow"}]
execute if score @s Pets.RelLevel matches 5 run tellraw @s [{text:"Your bond with "},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" has reached "},{text:"Eternal Bond",color:"gold",bold:true},{text:"! "},{text:"(1.5x ability multiplier)",color:"yellow"}]

# Campfire Stories — record Eternal Bond milestone
execute if score @s Pets.RelLevel matches 5 run data modify storage evercraft:campfire temp.pet set from storage evercraft:companions temp.levelName
execute if score @s Pets.RelLevel matches 5 run function evercraft:campfire_stories/record/pet_eternal

# Award Dreamweaver's Thread (+1 permanent DR) at Eternal Bond if not already owned
execute if score @s Pets.RelLevel matches 5 if score @s ec.thread_count matches 0 run loot give @s loot evercraft:items/dreamweavers_thread
execute if score @s Pets.RelLevel matches 5 if score @s ec.thread_count matches 0 run tellraw @s [{text:"  ✦ ",color:"light_purple"},{text:"Dreamweaver's Thread",color:"light_purple",bold:true},{text:" received! (+1 Dream Rate)",color:"yellow"}]

# Record "Eternal Bond" memory at level 5
execute if score @s Pets.RelLevel matches 5 run function evercraft:companions/memories/on_bond_eternal

# Reapply pet abilities with new multiplier
execute as @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run function evercraft:companions/handler/active_pet/abilities/pet_selector with entity @s item.components."minecraft:profile".properties[{name:"name"}]
