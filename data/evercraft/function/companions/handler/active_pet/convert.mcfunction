tellraw @s [{text:"You have converted your ",color:"dark_green"},{nbt:"item.components.\"minecraft:custom_name\"",entity:"@e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1]",interpret:true},{text:" back to an item.",color:"dark_green"}]

scoreboard players operation #Search Pets.ID = @s Pets.ID
summon item ~ ~ ~ {pickup_delay:0s, Tags:[Pets.ConvertedPet], Item:{id:"enchanted_book", count:1b}}

data modify entity @e[distance=..10, type=item, tag=Pets.ConvertedPet, limit=1] Item set from entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item
data remove entity @e[type=item, tag=Pets.ConvertedPet, limit=1] Item.components."minecraft:custom_data"
data modify entity @e[type=item, tag=Pets.ConvertedPet, limit=1] Item.components."minecraft:lore"[-1] set value {text:"Click to add to your pet list.", color:"yellow", italic:false}
data modify entity @e[type=item, tag=Pets.ConvertedPet, limit=1] Item.components."minecraft:custom_data" set value {pet:1b}

kill @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id]

function evercraft:companions/handler/active_pet/abilities/reset_perks

tag @s remove Pets.ActivePet