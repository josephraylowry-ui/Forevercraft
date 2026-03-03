advancement revoke @s only evercraft:companions/changed_dimension
execute if data storage evercraft:companions uninstalled run return fail

scoreboard players operation #Search Pets.ID = @s Pets.ID
tp @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id] @s