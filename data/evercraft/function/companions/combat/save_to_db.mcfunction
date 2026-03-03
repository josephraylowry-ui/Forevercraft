# Pet Combat — Persist Combat Data to Database Marker (Macro)
# Updates the pet's entry in the marker data array
# Uses same pattern as leveling/update_database — match by display name in properties[1]
$data modify entity @e[type=marker,tag=Pets.Marker,predicate=evercraft:companions/check_id,limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"$(display_name)"}]}}}].components."minecraft:custom_data".combat_xp set value $(combat_xp)
$data modify entity @e[type=marker,tag=Pets.Marker,predicate=evercraft:companions/check_id,limit=1] data.Pets[{components:{"minecraft:profile":{properties:[{},{value:"$(display_name)"}]}}}].components."minecraft:custom_data".combat_level set value $(combat_level)
