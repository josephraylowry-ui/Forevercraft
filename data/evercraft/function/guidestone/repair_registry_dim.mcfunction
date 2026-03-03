# Guidestone — One-time repair: add dim field to registry entries that are missing it
# All existing guidestones are in the overworld (no cross-dim guidestones have been placed yet)
# This sets dim="minecraft:overworld" on every entry in the registry

data modify storage evercraft:guidestone repair_working set from storage evercraft:guidestone registry
data modify storage evercraft:guidestone registry set value []
function evercraft:guidestone/repair_registry_dim_step

tellraw @a [{text:"[Guidestone] ",color:"dark_purple"},{text:"Registry repaired — dimension data added to all entries.",color:"light_purple"}]
