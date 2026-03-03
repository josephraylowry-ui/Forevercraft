advancement revoke @s only evercraft:companions/player_death
execute if data storage evercraft:companions uninstalled run return fail

scoreboard players operation #Search Pets.ID = @s Pets.ID

# --------------------------------------------------------------------------------- #

tellraw @s [{text:"Your ", color:"dark_green"},{nbt:"item.components.\"minecraft:custom_name\"", entity:"@e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1]", interpret:true},{text:" was left all alone and decided to go back home.", color:"dark_green"}]

function evercraft:companions/handler/active_pet/abilities/reset_perks

kill @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id]

function evercraft:companions/handler/menu/despawn

tag @s remove Pets.ActivePet