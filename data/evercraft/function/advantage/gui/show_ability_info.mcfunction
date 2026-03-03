# Show prestige ability descriptions — run as interaction entity
# Macro arg: tree (name string)

# Clear interaction data
data remove entity @s interaction

# Find the player
$execute as @a[tag=Adv.InMenu,distance=..5,limit=1,sort=nearest] run function evercraft:advantage/gui/ability_desc/$(tree)

# Click sound
execute as @a[tag=Adv.InMenu,distance=..5,limit=1,sort=nearest] at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.3 1.5
