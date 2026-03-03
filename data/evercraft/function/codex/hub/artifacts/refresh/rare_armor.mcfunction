# Artifact Collection — Refresh Rare Armor
# Checks advancements and updates display text
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/piglin_helmet=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_piglin_helmet,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Piglin Helmet",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/piglin_helmet=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_piglin_helmet,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/plate_chestplate=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_plate_chestplate,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Plate Chestplate",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/plate_chestplate=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_plate_chestplate,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/highland_leggings=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_highland_leggings,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Highland Leggings",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/highland_leggings=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_highland_leggings,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/dragon_boots=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_dragon_boots,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Dragon Boots",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragon_boots=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_dragon_boots,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/opulent_chestplate=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_opulent_chestplate,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Opulent Chestplate",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/opulent_chestplate=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_opulent_chestplate,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
