# Refresh all pet slot displays with current MenuDisplay data
# Called as player after page change

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Clear items from slots that no longer have pets
# Then set items for slots that do have pets

# Slot 0
execute if data storage evercraft:companions MenuDisplay[0] as @e[type=item_display,tag=Pets.Slot0,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[0]
execute unless data storage evercraft:companions MenuDisplay[0] as @e[type=item_display,tag=Pets.Slot0,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 1
execute if data storage evercraft:companions MenuDisplay[1] as @e[type=item_display,tag=Pets.Slot1,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[1]
execute unless data storage evercraft:companions MenuDisplay[1] as @e[type=item_display,tag=Pets.Slot1,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 2
execute if data storage evercraft:companions MenuDisplay[2] as @e[type=item_display,tag=Pets.Slot2,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[2]
execute unless data storage evercraft:companions MenuDisplay[2] as @e[type=item_display,tag=Pets.Slot2,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 3
execute if data storage evercraft:companions MenuDisplay[3] as @e[type=item_display,tag=Pets.Slot3,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[3]
execute unless data storage evercraft:companions MenuDisplay[3] as @e[type=item_display,tag=Pets.Slot3,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 4
execute if data storage evercraft:companions MenuDisplay[4] as @e[type=item_display,tag=Pets.Slot4,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[4]
execute unless data storage evercraft:companions MenuDisplay[4] as @e[type=item_display,tag=Pets.Slot4,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 5
execute if data storage evercraft:companions MenuDisplay[5] as @e[type=item_display,tag=Pets.Slot5,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[5]
execute unless data storage evercraft:companions MenuDisplay[5] as @e[type=item_display,tag=Pets.Slot5,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 6
execute if data storage evercraft:companions MenuDisplay[6] as @e[type=item_display,tag=Pets.Slot6,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[6]
execute unless data storage evercraft:companions MenuDisplay[6] as @e[type=item_display,tag=Pets.Slot6,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 7
execute if data storage evercraft:companions MenuDisplay[7] as @e[type=item_display,tag=Pets.Slot7,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[7]
execute unless data storage evercraft:companions MenuDisplay[7] as @e[type=item_display,tag=Pets.Slot7,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 8
execute if data storage evercraft:companions MenuDisplay[8] as @e[type=item_display,tag=Pets.Slot8,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[8]
execute unless data storage evercraft:companions MenuDisplay[8] as @e[type=item_display,tag=Pets.Slot8,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 9
execute if data storage evercraft:companions MenuDisplay[9] as @e[type=item_display,tag=Pets.Slot9,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[9]
execute unless data storage evercraft:companions MenuDisplay[9] as @e[type=item_display,tag=Pets.Slot9,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 10
execute if data storage evercraft:companions MenuDisplay[10] as @e[type=item_display,tag=Pets.Slot10,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[10]
execute unless data storage evercraft:companions MenuDisplay[10] as @e[type=item_display,tag=Pets.Slot10,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 11
execute if data storage evercraft:companions MenuDisplay[11] as @e[type=item_display,tag=Pets.Slot11,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[11]
execute unless data storage evercraft:companions MenuDisplay[11] as @e[type=item_display,tag=Pets.Slot11,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 12
execute if data storage evercraft:companions MenuDisplay[12] as @e[type=item_display,tag=Pets.Slot12,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[12]
execute unless data storage evercraft:companions MenuDisplay[12] as @e[type=item_display,tag=Pets.Slot12,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 13
execute if data storage evercraft:companions MenuDisplay[13] as @e[type=item_display,tag=Pets.Slot13,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[13]
execute unless data storage evercraft:companions MenuDisplay[13] as @e[type=item_display,tag=Pets.Slot13,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 14
execute if data storage evercraft:companions MenuDisplay[14] as @e[type=item_display,tag=Pets.Slot14,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[14]
execute unless data storage evercraft:companions MenuDisplay[14] as @e[type=item_display,tag=Pets.Slot14,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 15
execute if data storage evercraft:companions MenuDisplay[15] as @e[type=item_display,tag=Pets.Slot15,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[15]
execute unless data storage evercraft:companions MenuDisplay[15] as @e[type=item_display,tag=Pets.Slot15,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 16
execute if data storage evercraft:companions MenuDisplay[16] as @e[type=item_display,tag=Pets.Slot16,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[16]
execute unless data storage evercraft:companions MenuDisplay[16] as @e[type=item_display,tag=Pets.Slot16,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item

# Slot 17
execute if data storage evercraft:companions MenuDisplay[17] as @e[type=item_display,tag=Pets.Slot17,predicate=evercraft:companions/check_id,limit=1] run data modify entity @s item set from storage evercraft:companions MenuDisplay[17]
execute unless data storage evercraft:companions MenuDisplay[17] as @e[type=item_display,tag=Pets.Slot17,predicate=evercraft:companions/check_id,limit=1] run data remove entity @s item
