# Load pets from marker storage and create display slots
# Called with @s = Pets.Marker at 0 -60 0

# Store pets to menu storage for page 1 (slots 0-17)
data remove storage evercraft:companions MenuDisplay
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[0]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[1]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[2]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[3]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[4]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[5]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[6]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[7]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[8]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[9]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[10]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[11]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[12]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[13]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[14]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[15]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[16]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[17]

# Now spawn the slots - execute as player who opened menu
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] at @s run function evercraft:companions/handler/menu_v2/spawn_slots
