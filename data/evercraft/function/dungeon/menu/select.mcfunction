# Dungeon Difficulty Menu — Select Difficulty (Macro)
# Called with: {difficulty:N, label:"Name", color:"color"}
# Run as: interaction entity, need to route back to the player

# Clear interaction data so click doesn't re-fire
data remove entity @s interaction

# Set the selected difficulty
$scoreboard players set #dg_difficulty ec.var $(difficulty)

# Close the menu (runs as the player)
execute as @a[tag=DG.InMenu,distance=..8,limit=1] run tag @s remove DG.InMenu
execute at @a[distance=..8,limit=1] run kill @e[type=text_display,tag=DG.MenuEl,distance=..8]
execute at @a[distance=..8,limit=1] run kill @e[type=interaction,tag=DG.MenuEl,distance=..8]
execute at @a[distance=..8,limit=1] run kill @e[type=item_display,tag=DG.MenuEl,distance=..8]

# Announce selection
$tellraw @a[distance=..8,limit=1] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Difficulty set to ",color:"gray"},{text:"$(label)",color:"$(color)",bold:true},{text:"!",color:"gray"}]

# Begin the dungeon (runs as the player who selected)
execute as @a[distance=..8,limit=1,sort=nearest] at @s run function evercraft:dungeon/begin
