# Load page 1 pets (indices 0-17)
# Called as Pets.Marker

data remove storage evercraft:companions MenuDisplay

# Load pets 0-17 into display storage
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

# Update slot displays
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu_v2/refresh_slots
