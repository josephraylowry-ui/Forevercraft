# Artifact Collection — Refresh Uncommon Tools
# Checks advancements and updates display text
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_drill=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_drill,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Drill",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_drill=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_drill,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_kemetian_shovel=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_kemetian_shovel,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Kemetian Shovel",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_kemetian_shovel=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_kemetian_shovel,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_kemetian_hoe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_kemetian_hoe,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Kemetian Hoe",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_kemetian_hoe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_kemetian_hoe,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_double_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_double_axe,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Double Axe",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_double_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_double_axe,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_bone_fishing_rod=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_bone_fishing_rod,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Bone Fishing Rod",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_bone_fishing_rod=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_bone_fishing_rod,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
