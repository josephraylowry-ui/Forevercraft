scoreboard players operation #Search Pets.ID = @a[tag=Pets.Owner] Pets.ID

tellraw @a[tag=Pets.Owner] [{text:"Multiple pets have been detected and will all be despawned!\nNow despawning", color:"dark_green"},{nbt:"item.components.\"minecraft:custom_name\"", entity:"@s", interpret:true},{text:".", color:"dark_green"}]

execute as @a[tag=Pets.Owner] run function evercraft:companions/handler/active_pet/abilities/reset_perks
tag @a[tag=Pets.Owner] remove Pets.ActivePet
execute as @a[tag=Pets.Owner] run function evercraft:companions/handler/menu/despawn

kill @s