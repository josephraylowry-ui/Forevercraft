# Classes Refresh — Archer Bows
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/hunting_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunting_bow,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Hunting Bow",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hunting_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunting_bow,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/mechanical_shortbow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mechanical_shortbow,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mechanical Shortbow",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mechanical_shortbow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mechanical_shortbow,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/battle_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battle_bow,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Battle Bow",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/battle_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battle_bow,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/longbow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longbow,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Longbow",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/longbow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longbow,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/frostbite_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frostbite_bow,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Shivering Bow",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frostbite_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frostbite_bow,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormcaller_bow,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Light Bow",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormcaller_bow,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient_bow,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ancient Bow",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient_bow,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_arm_cannon,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Power Bow",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_arm_cannon,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/sabrewing=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_sabrewing,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Sabrewing",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sabrewing=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_sabrewing,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_call_of_the_void,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Call of the Void",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_call_of_the_void,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/hunters_promise=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunters_promise,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Nocturnal Bow",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hunters_promise=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunters_promise,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/gaster_blaster=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gaster_blaster,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Gaster Blaster",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/gaster_blaster=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gaster_blaster,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
