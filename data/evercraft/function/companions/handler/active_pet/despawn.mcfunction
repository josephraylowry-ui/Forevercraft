scoreboard players operation #Search Pets.ID = @s Pets.ID

tellraw @s [{text:"You have despawned your ", color:"dark_green"},{nbt:"item.components.\"minecraft:custom_name\"", entity:"@e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1]", interpret:true},{text:".", color:"dark_green"}]

function evercraft:companions/handler/active_pet/abilities/reset_perks

kill @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id]
kill @e[type=interaction, tag=Pets.PetInteract, predicate=evercraft:companions/check_id]

tag @s remove Pets.ActivePet
function evercraft:companions/handler/menu/despawn