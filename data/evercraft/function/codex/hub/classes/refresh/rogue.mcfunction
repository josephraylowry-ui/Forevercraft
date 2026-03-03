# Classes Refresh — Rogue Daggers
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/vex_iron_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_common_vex_iron_sword,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dagger",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/vex_iron_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_common_vex_iron_sword,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/hellenic_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_uncommon_hellenic_sword,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Hellenic Sword",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hellenic_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_uncommon_hellenic_sword,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/soulreaper_scythe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulreaper,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Hidden Blade",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soulreaper_scythe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulreaper,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_coral_blade,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Coral Blade",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_coral_blade,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glacial_edge,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Fang of Frost",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glacial_edge,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/heartstealer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_heartstealer,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Heartstealer",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/heartstealer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_heartstealer,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_voidbane,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Void-Touched Blade",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_voidbane,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulflame,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"The Soul Mirror",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulflame,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/the_beginning_and_the_end=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_the_beginning_and_the_end,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"The Beginning and The End",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/the_beginning_and_the_end=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_the_beginning_and_the_end,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/xara_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_xara_sword,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Nameless Blade",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/xara_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_xara_sword,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ender_dragon_sword,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ender Dragon Blade",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ender_dragon_sword,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/zantetsuken=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_zantetsuken,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Zantetsuken",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/zantetsuken=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_zantetsuken,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
