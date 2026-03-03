# Called when relationship level decreases due to neglect
# Run as player

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Play sad effects
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 5
execute at @s run playsound minecraft:entity.wolf.whine master @s ~ ~ ~ 1 0.8

# Message
execute if score @s Pets.RelLevel matches 0 run tellraw @s [{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" seems distant... Feed or pet them to restore your bond!",color:"gray",italic:true}]
execute if score @s Pets.RelLevel matches 1..4 run tellraw @s [{text:"Your bond with "},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" has weakened slightly.",color:"gray",italic:true}]

# Reapply abilities with lower multiplier
execute as @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run function evercraft:companions/handler/active_pet/abilities/pet_selector with entity @s item.components."minecraft:profile".properties[{name:"name"}]
