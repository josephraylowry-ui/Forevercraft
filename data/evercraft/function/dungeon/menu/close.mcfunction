# Dungeon Difficulty Menu — Close (Cancel)
# Run as: player with DG.InMenu OR interaction entity

# Return the dungeon key to the player
execute as @a[tag=DG.InMenu,distance=..8,limit=1] run loot give @s loot evercraft:dungeon/key
execute as @a[tag=DG.InMenu,distance=..8,limit=1] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Cancelled. Key returned.",color:"gray"}]

# Remove tag
tag @s remove DG.InMenu
execute as @a[tag=DG.InMenu,distance=..8,limit=1] run tag @s remove DG.InMenu

# Kill menu elements
execute at @s run kill @e[type=text_display,tag=DG.MenuEl,distance=..8]
execute at @s run kill @e[type=interaction,tag=DG.MenuEl,distance=..8]
execute at @s run kill @e[type=item_display,tag=DG.MenuEl,distance=..8]

# Sound
execute as @a[distance=..8,limit=1] run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.3 0.8
