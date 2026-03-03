# Artifact Collection — Refresh Rare Tools
# Checks advancements and updates display text
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_pickaxe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_fantasy_pickaxe,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Fantasy Pickaxe",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_pickaxe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_fantasy_pickaxe,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_shovel=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_fantasy_shovel,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Fantasy Shovel",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_shovel=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_fantasy_shovel,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/sinitic_hoe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_sinitic_hoe,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Sinitic Hoe",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sinitic_hoe=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_sinitic_hoe,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_axeblade,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Axeblade",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_axeblade,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/blossom_fishing_rod=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_blossom_fishing_rod,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Blossom Fishing Rod",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blossom_fishing_rod=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_blossom_fishing_rod,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
