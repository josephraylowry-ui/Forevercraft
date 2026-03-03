execute if entity @s[tag=Pets.Hidden] run return fail
scoreboard players operation #Search Pets.ID = @s Pets.ID

execute unless entity @a[tag=Pets.ActivePet, predicate=evercraft:companions/check_id] run data modify entity @s view_range set value 0f