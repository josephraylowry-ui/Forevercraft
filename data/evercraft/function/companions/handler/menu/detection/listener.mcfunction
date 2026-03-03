execute if predicate evercraft:companions/menu/non_interactable run return run function evercraft:companions/handler/menu/detection/null
execute if predicate evercraft:companions/menu/close run return run function evercraft:companions/handler/menu/despawn

execute if items entity @s player.cursor enchanted_book[custom_data={petMenu:1b, pet:1b}] run return run function evercraft:companions/handler/active_pet/spawn

execute if predicate evercraft:companions/menu/despawn at @s run return run function evercraft:companions/handler/menu/detection/despawn
execute if predicate evercraft:companions/menu/convert run return run function evercraft:companions/handler/menu/detection/convert

execute if predicate evercraft:companions/menu/next run return run function evercraft:companions/handler/menu/detection/next_page
execute if predicate evercraft:companions/menu/previous run return run function evercraft:companions/handler/menu/detection/previous_page

execute if predicate evercraft:companions/menu/visibility run return run function evercraft:companions/handler/menu/detection/visibility