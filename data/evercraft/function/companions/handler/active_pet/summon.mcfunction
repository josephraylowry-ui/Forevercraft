summon item_display ~ ~1.6 ~ {teleport_duration:12, Tags:[Pets.NewPet, Pet], CustomNameVisible:1b,  item_display:"ground", item:{id:"player_head", count:1b}}
execute in overworld run data modify entity @e[type=item_display, tag=Pets.NewPet, limit=1] item set from block 0 -63 0 Items[0]
scoreboard players operation @e[type=item_display, tag=Pets.NewPet, limit=1] Pets.ID = @s Pets.ID

# Spawn interaction entity for petting/feeding
summon interaction ~ ~1.6 ~ {width:0.8f, height:0.8f, response:1b, Tags:[Pets.PetInteract, Pets.NewInteract]}
scoreboard players operation @e[type=interaction, tag=Pets.NewInteract, limit=1] Pets.ID = @s Pets.ID
tag @e[type=interaction, tag=Pets.NewInteract, limit=1] remove Pets.NewInteract

execute if entity @a[tag=Pets.Owner, tag=Pets.Hidden] run data modify entity @e[type=item_display, tag=Pets.NewPet, limit=1] view_range set value 0f

execute in overworld run data modify entity @e[type=item_display, tag=Pets.NewPet, limit=1] CustomName set from block 0 -63 0 Items[0].components."minecraft:custom_name"

# Reset kill counter for new pet session
scoreboard players set @s Pets.Kills 0

tellraw @s [{text:"You have summoned your ",color:"dark_green"},{nbt:"item.components.\"minecraft:custom_name\"",entity:"@e[type=item_display, tag=Pets.NewPet, limit=1]",interpret:true},{text:".",color:"dark_green"}]

function evercraft:companions/handler/active_pet/abilities/pet_selector with entity @e[type=item_display, tag=Pets.NewPet, limit=1] item.components."minecraft:profile".properties[{name:"name"}]

tag @e[type=item_display, tag=Pets.NewPet, limit=1] remove Pets.NewPet

# Record "First Steps Together" memory if this pet has no memories yet
function evercraft:companions/memories/on_summon