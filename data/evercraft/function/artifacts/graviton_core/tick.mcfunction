# Graviton Core - Tick Function
# Applies all effects for players with Graviton Core

# Check for players with Graviton Core in inventory (any slot)
execute as @a if items entity @s inventory.* minecraft:nether_star[custom_data~{graviton_core:1b}] run function evercraft:artifacts/graviton_core/apply_effects
execute as @a if items entity @s weapon.offhand minecraft:nether_star[custom_data~{graviton_core:1b}] run function evercraft:artifacts/graviton_core/apply_effects

schedule function evercraft:artifacts/graviton_core/tick 5t
