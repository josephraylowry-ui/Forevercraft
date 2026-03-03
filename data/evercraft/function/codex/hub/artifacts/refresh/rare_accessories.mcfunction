# Artifact Collection — Refresh Rare Accessories
# Checks advancements and updates display text
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/diamond_ring=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_diamond_ring,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Diamond Ring",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/diamond_ring=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_diamond_ring,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/heartstone=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_heartstone,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Heartstone",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/heartstone=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_heartstone,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/ruin_watch=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_ruin_watch,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ruin Watch",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ruin_watch=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_ruin_watch,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/stormcatcher_shard=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_stormcatcher_shard,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Stormcatcher Shard",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/stormcatcher_shard=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_stormcatcher_shard,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
