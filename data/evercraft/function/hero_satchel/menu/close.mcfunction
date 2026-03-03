# Hero's Satchel Menu — Close
# Run as the player

# Kill all menu elements
execute at @s run kill @e[type=text_display,tag=ec.hsatch_el,distance=..8]
execute at @s run kill @e[type=interaction,tag=ec.hsatch_el,distance=..8]
execute at @s run kill @e[type=item_display,tag=ec.hsatch_el,distance=..8]

# Remove tags
tag @s remove ec.hsatch_in_menu

# Revoke advancement so next right-click can re-trigger
advancement revoke @s only evercraft:hero_satchel/open

# Sound
playsound minecraft:block.chest.close master @s ~ ~ ~ 0.5 1.2
