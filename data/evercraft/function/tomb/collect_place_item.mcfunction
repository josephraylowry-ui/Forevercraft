# Tomb System — Place Item in Player Container Slot (macro)
# @s = player receiving items
# $(Slot) = inventory slot index from Inventory array (0-35)
# Chest minecart (ec.tomb_cart) holds the item in container.0

$item replace entity @s inventory.$(Slot) from entity @e[type=chest_minecart,tag=ec.tomb_cart,limit=1] container.0
