# Load page 2 pets (indices 18-35)
# Called as Pets.Marker

data remove storage evercraft:companions MenuDisplay

# Load pets 18-35 into display storage
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[18]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[19]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[20]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[21]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[22]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[23]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[24]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[25]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[26]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[27]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[28]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[29]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[30]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[31]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[32]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[33]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[34]
data modify storage evercraft:companions MenuDisplay append from entity @s data.Pets[35]

# Update slot displays
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu_v2/refresh_slots
