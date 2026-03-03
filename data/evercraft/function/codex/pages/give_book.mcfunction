# Give The Forevercraft Codex written book with dynamic pages
# This creates a book showing collected and uncollected artifacts

# Store count in title
execute store result storage evercraft:codex count int 1 run scoreboard players get @s ec.artifact_count

# Give the codex book using loot table
loot give @s loot evercraft:items/artifact_codex

# Send confirmation message
tellraw @s [{text:"[Forevercraft] ",color:"gold",bold:true},{text:"Updated! ",color:"yellow"},{score:{name:"@s",objective:"ec.artifact_count"},color:"aqua"},{text:"/50 artifacts collected.",color:"white"}]

# Play sound
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
