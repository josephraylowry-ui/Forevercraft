# Classes Refresh — Dancer Gauntlets
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/mauler=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mauler,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mauler",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mauler=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mauler,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/dust_storm=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dust_storm,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dust Storm",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dust_storm=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dust_storm,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/plate_knuckle=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plate_knuckle,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Plate Knuckle",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/plate_knuckle=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plate_knuckle,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/golden_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_gauntlet,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Golden Gauntlet",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golden_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_gauntlet,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/order_of_the_stone_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_order_of_the_stone_gauntlet,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Order of the Stone Gauntlet",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/order_of_the_stone_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_order_of_the_stone_gauntlet,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/prismarine_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_prismarine_gauntlet,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Prismarine Gauntlet",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/prismarine_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_prismarine_gauntlet,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/red_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_red_gauntlet,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Red Gauntlet",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/red_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_red_gauntlet,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
