# Classes Refresh — Hunter Crossbows
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/windrunner=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_windrunner,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Rapid Crossbow",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/windrunner=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_windrunner,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/air_strike=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_air_strike,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Firebolt Thrower",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/air_strike=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_air_strike,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_acacia_ballista,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Acacia Ballista",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_acacia_ballista,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/venomfang_crossbow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_venomfang_crossbow,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Corrupted Crossbow",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/venomfang_crossbow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_venomfang_crossbow,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/echo_shot=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_echo_shot,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Echo Shot",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/echo_shot=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_echo_shot,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/awper_hand=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_awper_hand,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Voidcaller",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/awper_hand=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_awper_hand,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
