# Classes Refresh — Berserker Axes
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/highland_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_axe,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Highland Axe",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/highland_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_axe,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/double_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_double_axe,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Double Axe",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/double_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_double_axe,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy_axe,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Fantasy Axe",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy_axe,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/anchor=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_anchor,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Anchor",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/anchor=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_anchor,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/morning_star=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_morning_star,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Morning Star",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/morning_star=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_morning_star,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axeblade,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Axeblade",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axeblade,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/leviathan_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_leviathan_axe,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Leviathan Axe",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/leviathan_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_leviathan_axe,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_starfall_axe,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Starfall Axe",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_starfall_axe,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/whirlwind=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_whirlwind,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Whirlwind",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/whirlwind=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_whirlwind,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/axe_of_honor=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axe_of_honor,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Axe of Honor",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/axe_of_honor=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axe_of_honor,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/kratos_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_kratos_axe,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Kratos Axe",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/kratos_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_kratos_axe,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
