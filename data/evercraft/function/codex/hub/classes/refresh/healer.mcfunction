# Classes Refresh — Healer Artifacts
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/healer_bandages=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_bandages,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Medicinal Bandages",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_bandages=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_bandages,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_poultice=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_poultice,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Herbal Poultice",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_poultice=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_poultice,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_salts=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_salts,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Smelling Salts",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_salts=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_salts,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_balm=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_balm,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Soothing Balm",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_balm=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_balm,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_chalice=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_chalice,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mending Chalice",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_chalice=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_chalice,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_incense=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_incense,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Warding Incense",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_incense=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_incense,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_plume=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_plume,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Phoenix Plume",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_plume=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_plume,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_censer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_censer,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Radiant Censer",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_censer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_censer,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_lotus=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_lotus,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Celestial Lotus",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_lotus=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_lotus,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_tome=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tome,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Lifewarden's Tome",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_tome=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tome,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_ambrosia=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_ambrosia,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Endless Ambrosia",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_ambrosia=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_ambrosia,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/healer_tears=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tears,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Tears of the World Tree",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_tears=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tears,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
