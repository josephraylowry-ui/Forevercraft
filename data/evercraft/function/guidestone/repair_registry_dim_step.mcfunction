# Guidestone — Repair step: process one registry entry
execute unless data storage evercraft:guidestone repair_working[0] run return 0

# Read entry
data modify storage evercraft:guidestone repair_entry set from storage evercraft:guidestone repair_working[0]

# Set dim to overworld (all existing entries are overworld — dim was never stored due to Dimension NBT bug)
data modify storage evercraft:guidestone repair_entry.dim set value "minecraft:overworld"

# Append fixed entry and recurse
data modify storage evercraft:guidestone registry append from storage evercraft:guidestone repair_entry
data remove storage evercraft:guidestone repair_working[0]
function evercraft:guidestone/repair_registry_dim_step
