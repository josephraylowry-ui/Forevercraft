# Artifact Collection — Refresh Uncommon Accessories
# Checks advancements and updates display text
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/featherweight_stone=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_featherweight_stone,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Featherweight Stone",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/featherweight_stone=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_featherweight_stone,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/glowstone_pendant=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_glowstone_pendant,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Glowstone Pendant",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/glowstone_pendant=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_glowstone_pendant,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/iron_talisman=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_iron_talisman,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Iron Talisman",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/iron_talisman=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_iron_talisman,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
