# Classes Refresh — Beastlord Spears
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/boneclub=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_boneclub,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Bone Club",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/boneclub=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_boneclub,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/lance=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_lance,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Lance",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/lance=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_lance,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/battlestaff=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battlestaff,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Battlestaff",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/battlestaff=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battlestaff,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/bone_cudgel=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_bone_cudgel,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Bone Cudgel",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/bone_cudgel=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_bone_cudgel,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/glaive=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glaive,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Glaive",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/glaive=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glaive,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/infinity_lance=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_infinity_lance,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Infinity Lance",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infinity_lance=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_infinity_lance,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/gungnir_spear=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gungnir_spear,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Gungnir Spear",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/gungnir_spear=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gungnir_spear,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/longinus=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longinus,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Longinus",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/longinus=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longinus,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_lance=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_lance,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dragonmaster Lance",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_lance=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_lance,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
