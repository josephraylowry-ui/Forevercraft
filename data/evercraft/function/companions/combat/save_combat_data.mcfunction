# Pet Combat — Save Combat Data to Pet Entity + Database
# Writes #pc_cxp and #pc_clvl to the active pet entity AND the database marker

# Save to live entity
execute store result entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_data".combat_xp int 1 run scoreboard players get #pc_cxp ec.var
execute store result entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_data".combat_level int 1 run scoreboard players get #pc_clvl ec.var

# Prepare macro data for database persistence
# Read pet display name (PascalCase, used as DB key)
data modify storage evercraft:pet_combat display_name set from entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:profile".properties[{name:"name"}].value
execute store result storage evercraft:pet_combat combat_xp int 1 run scoreboard players get #pc_cxp ec.var
execute store result storage evercraft:pet_combat combat_level int 1 run scoreboard players get #pc_clvl ec.var

# Persist to database marker (survives pet switch/despawn)
function evercraft:companions/combat/save_to_db with storage evercraft:pet_combat
