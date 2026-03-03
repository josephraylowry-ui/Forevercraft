# Satchel Menu — Handle Click (macro)
# Args from storage: bid (bag ID), slot (s0-s6)
# If slot has artifact → retrieve. If empty + mainhand has artifact → store.

# Check if this slot has an artifact stored
$execute if data storage evercraft:satchel bags.$(bid).$(slot).artifact run function evercraft:satchel/menu/retrieve_artifact with storage evercraft:satchel temp
$execute unless data storage evercraft:satchel bags.$(bid).$(slot).artifact run function evercraft:satchel/menu/try_store_artifact with storage evercraft:satchel temp

# Refresh display
function evercraft:satchel/menu/refresh
