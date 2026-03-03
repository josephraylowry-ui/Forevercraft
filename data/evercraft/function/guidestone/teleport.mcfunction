# Guidestone — Teleport player to destination
# Macro args: x, y, z, dim, name
# Run as the player

# Close menu first
function evercraft:guidestone/menu/close

# Teleport
$execute in $(dim) run tp @s $(x) $(y) $(z)

# Effects
$tellraw @s [{text:"[Guidestone] ",color:"dark_purple"},{text:"Teleported to ",color:"light_purple"},{text:"$(name)",color:"gold",bold:true}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.8
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.5
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.05 40
