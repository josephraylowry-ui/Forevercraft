# Artifact Collection — Refresh Common Accessories
# Checks advancements and updates display text
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/pebble_of_dreams=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_pebble_of_dreams,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Pebble of Dreams",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/pebble_of_dreams=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_pebble_of_dreams,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/travelers_charm=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_travelers_charm,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Travelers Charm",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/travelers_charm=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_travelers_charm,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/worn_compass=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_worn_compass,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Worn Compass",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/worn_compass=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_worn_compass,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
