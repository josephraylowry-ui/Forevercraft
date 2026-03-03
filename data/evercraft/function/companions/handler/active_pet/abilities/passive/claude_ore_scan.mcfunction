# Claude Ore Sight - Scan for ores within range
# Called with macro: {range} = scan radius in blocks
# Scatters probes on XZ plane, scans columns around player Y level
# Spawns glowing armor stands at detected ore positions (10s lifetime)

# Store player Y for probe repositioning
execute store result score #playerY Pets.Calc run data get entity @s Pos[1]

# Summon 12 probe markers to scatter and check for ores
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}
summon marker ~ ~ ~ {Tags:["Pets.OreProbe"]}

# Spread probes randomly within range on XZ (lands on surface)
$spreadplayers ~ ~ 0 $(range) false @e[type=marker, tag=Pets.OreProbe]

# Move probes to player's Y level so column scan works underground
execute as @e[type=marker, tag=Pets.OreProbe] store result entity @s Pos[1] double 1 run scoreboard players get #playerY Pets.Calc

# For each probe, scan the Y column below and above for ores
execute as @e[type=marker, tag=Pets.OreProbe] at @s run function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_column

# Add ore markers to glow team (aqua outline)
team join Pets.OreGlow @e[type=armor_stand, tag=Pets.OreMarker]

# Clean up probes
kill @e[type=marker, tag=Pets.OreProbe]

# Schedule marker cleanup (ore markers despawn after 10 seconds)
schedule function evercraft:companions/handler/active_pet/abilities/passive/claude_ore_cleanup 10s replace
