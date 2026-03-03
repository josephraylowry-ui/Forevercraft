# Give the player an Ancient Netherite Core (unleveled)
loot give @s loot evercraft:artifacts/special/ancient_netherite_core

tellraw @s ["",{text:"You received an ",color:"gray"},{text:"Ancient Netherite Core",color:"dark_purple",bold:true},{text:"!",color:"gray"}]
tellraw @s {text:"Hold it while sneaking with netherite blocks to upgrade!",color:"yellow"}
