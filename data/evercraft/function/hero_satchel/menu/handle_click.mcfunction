# Hero's Satchel Menu — Handle Click (macro)
# Args from storage: bid (bag ID), slot (s0-s10)
# If slot has artifact → retrieve. If empty + mainhand has boss artifact → store.

# Check if this slot has an artifact stored
$execute if data storage evercraft:hero_satchel bags.$(bid).$(slot).artifact run function evercraft:hero_satchel/menu/retrieve with storage evercraft:hero_satchel temp
$execute unless data storage evercraft:hero_satchel bags.$(bid).$(slot).artifact run function evercraft:hero_satchel/menu/try_store with storage evercraft:hero_satchel temp

# Refresh display
function evercraft:hero_satchel/menu/refresh
