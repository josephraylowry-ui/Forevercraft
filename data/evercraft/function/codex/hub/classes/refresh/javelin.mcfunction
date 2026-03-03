# Classes Refresh — Javelin Tridents
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/norroen_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_norroen,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Norroen Trident",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/norroen_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_norroen,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/ancient_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ancient Trident",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ancient_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/royal_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_royal,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Royal Trident",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/royal_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_royal,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Fantasy Trident",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/shuriken_of_ice=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_shuriken,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Shuriken of Ice",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/shuriken_of_ice=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_shuriken,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/crucible_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_crucible,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Crucible Trident",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/crucible_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_crucible,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mjolnir",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/ninja_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ninja,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ninja Trident",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ninja_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ninja,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/master_bolt=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_master_bolt,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Master Bolt",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/master_bolt=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_master_bolt,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
