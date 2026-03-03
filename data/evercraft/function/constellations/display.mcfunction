# Artifact Constellations — Display progress
# Shows all 10 constellations with found/total counts
# Run as: player (via trigger or click event)

# Recount all constellations
function evercraft:constellations/count/tide
function evercraft:constellations/count/pyre
function evercraft:constellations/count/verdant
function evercraft:constellations/count/frozen
function evercraft:constellations/count/earth
function evercraft:constellations/count/star
function evercraft:constellations/count/shadow
function evercraft:constellations/count/dune
function evercraft:constellations/count/storm
function evercraft:constellations/count/soul

tellraw @s {text:""}
tellraw @s [{text:"  "},{"text":"Artifact Constellations","color":"gold","bold":true}]
tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}

# Tidewalker (10)
execute if score @s ec.cn_tide matches 10.. run tellraw @s [{text:"    "},{"text":"The Tidewalker","color":"aqua","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_tide"},color:"green"},{text:"/10 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_tide matches 10.. run tellraw @s [{text:"    "},{"text":"The Tidewalker","color":"aqua"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_tide"},color:"gray"},{text:"/10",color:"gray"}]

# Pyreborn (11)
execute if score @s ec.cn_pyre matches 11.. run tellraw @s [{text:"    "},{"text":"The Pyreborn","color":"red","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_pyre"},color:"green"},{text:"/11 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_pyre matches 11.. run tellraw @s [{text:"    "},{"text":"The Pyreborn","color":"red"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_pyre"},color:"gray"},{text:"/11",color:"gray"}]

# Verdant Crown (10)
execute if score @s ec.cn_verd matches 10.. run tellraw @s [{text:"    "},{"text":"The Verdant Crown","color":"green","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_verd"},color:"green"},{text:"/10 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_verd matches 10.. run tellraw @s [{text:"    "},{"text":"The Verdant Crown","color":"green"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_verd"},color:"gray"},{text:"/10",color:"gray"}]

# Frozen Veil (10)
execute if score @s ec.cn_frost matches 10.. run tellraw @s [{text:"    "},{"text":"The Frozen Veil","color":"blue","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_frost"},color:"green"},{text:"/10 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_frost matches 10.. run tellraw @s [{text:"    "},{"text":"The Frozen Veil","color":"blue"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_frost"},color:"gray"},{text:"/10",color:"gray"}]

# Earthshaker (10)
execute if score @s ec.cn_earth matches 10.. run tellraw @s [{text:"    "},{"text":"The Earthshaker","color":"yellow","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_earth"},color:"green"},{text:"/10 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_earth matches 10.. run tellraw @s [{text:"    "},{"text":"The Earthshaker","color":"yellow"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_earth"},color:"gray"},{text:"/10",color:"gray"}]

# Starweaver (8)
execute if score @s ec.cn_star matches 8.. run tellraw @s [{text:"    "},{"text":"The Starweaver","color":"dark_purple","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_star"},color:"green"},{text:"/8 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_star matches 8.. run tellraw @s [{text:"    "},{"text":"The Starweaver","color":"dark_purple"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_star"},color:"gray"},{text:"/8",color:"gray"}]

# Shadow's Edge (10)
execute if score @s ec.cn_shade matches 10.. run tellraw @s [{text:"    "},{"text":"The Shadow's Edge","color":"dark_gray","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_shade"},color:"green"},{text:"/10 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_shade matches 10.. run tellraw @s [{text:"    "},{"text":"The Shadow's Edge","color":"dark_gray"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_shade"},color:"gray"},{text:"/10",color:"gray"}]

# Dune Sovereign (10)
execute if score @s ec.cn_dune matches 10.. run tellraw @s [{text:"    "},{"text":"The Dune Sovereign","color":"gold","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_dune"},color:"green"},{text:"/10 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_dune matches 10.. run tellraw @s [{text:"    "},{"text":"The Dune Sovereign","color":"gold"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_dune"},color:"gray"},{text:"/10",color:"gray"}]

# Stormcaller (10)
execute if score @s ec.cn_storm matches 10.. run tellraw @s [{text:"    "},{"text":"The Stormcaller","color":"dark_aqua","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_storm"},color:"green"},{text:"/10 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_storm matches 10.. run tellraw @s [{text:"    "},{"text":"The Stormcaller","color":"dark_aqua"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_storm"},color:"gray"},{text:"/10",color:"gray"}]

# Soulbinder (10)
execute if score @s ec.cn_soul matches 10.. run tellraw @s [{text:"    "},{"text":"The Soulbinder","color":"dark_purple","bold":true},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_soul"},color:"green"},{text:"/10 ",color:"green"},{text:"COMPLETE","color":"green","bold":true}]
execute unless score @s ec.cn_soul matches 10.. run tellraw @s [{text:"    "},{"text":"The Soulbinder","color":"dark_purple"},{text:" — ",color:"dark_gray"},{score:{name:"@s",objective:"ec.cn_soul"},color:"gray"},{text:"/10",color:"gray"}]

tellraw @s {text:"  ─────────────────────────────",color:"dark_gray"}
tellraw @s [{text:"    "},{"text":"Each completed constellation grants ","color":"gray"},{"text":"+0.25 Dream Rate","color":"gold"}]
tellraw @s {text:""}
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.5 1.2
