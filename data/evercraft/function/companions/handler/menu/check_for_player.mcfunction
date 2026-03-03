scoreboard players operation #Search Pets.ID = @s Pets.ID
execute if entity @a[distance=..10, tag=Pets.ActiveMenu, predicate=evercraft:companions/check_id] run return fail

execute on controller run data modify entity @s Items set value []
execute on controller run kill @s
kill @s