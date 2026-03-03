# ============================================================
# Hearthstone — On Place
# Called by place_hearthstone advancement when player places the custom lodestone
# Run as: the player
# ============================================================

# Revoke advancement for re-detection
advancement revoke @s only evercraft:housing/place_hearthstone

# Check if player already has a home — must break old one first
execute if score @s hs.tier matches 1.. run tellraw @s [{text:"[Housing] ",color:"gold"},{text:"You already have a Hearthstone placed! Break it first to relocate.",color:"red"}]
execute if score @s hs.tier matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 0.5
execute if score @s hs.tier matches 1.. run return fail

# Raycast from eye to find the placed lodestone
scoreboard players set @s hs.temp 0
execute at @s anchored eyes run function evercraft:housing/raycast_place
