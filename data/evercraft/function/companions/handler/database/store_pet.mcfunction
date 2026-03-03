playsound entity.player.levelup master @s ~ ~ ~ 1 2
tellraw @s [{text: "Added ",color:"dark_green"},{nbt:"SelectedItem.components.\"minecraft:custom_name\"",entity:"@s",interpret:true},{text:" to your pet list.",color:"dark_green"}]

scoreboard players add @s Pets.Count 1
function evercraft:milestones/increment/pet_found

item modify entity @s weapon.mainhand evercraft:companions/make_menu_item

data modify storage evercraft:companions modifyPet set from entity @s SelectedItem
data modify storage evercraft:companions modifyPet.components."minecraft:lore"[-1] set value {text:"Click to summon", color:"yellow", italic: false}

data modify entity @e[type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id, limit=1] data.Pets append from storage evercraft:companions modifyPet

item replace entity @s weapon.mainhand with air