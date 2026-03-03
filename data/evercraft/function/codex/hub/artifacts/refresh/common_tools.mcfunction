# Artifact Collection — Refresh Common Tools
# Checks advancements and updates display text
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/common_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_hammer,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Hammer",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_hammer,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/common_ladle=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_ladle,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ladle",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_ladle=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_ladle,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/common_scythe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_scythe,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Scythe",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_scythe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_scythe,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/common_highland_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_highland_axe,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Highland Axe",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_highland_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_highland_axe,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/common_overgrown_fishing_rod=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_overgrown_fishing_rod,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Overgrown Fishing Rod",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_overgrown_fishing_rod=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_common_overgrown_fishing_rod,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
