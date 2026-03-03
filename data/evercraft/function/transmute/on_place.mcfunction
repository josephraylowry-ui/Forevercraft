# Transmutation Stand — On Place
# Called by place_anvil advancement when player places the custom lodestone
# Run as: the player

# Revoke advancement for re-detection
advancement revoke @s only evercraft:transmute/place_anvil

# Raycast from eye to find the placed lodestone (same pattern as guidestone)
scoreboard players set @s tx.temp 0
execute at @s anchored eyes run function evercraft:transmute/raycast_place
