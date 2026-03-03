# Artifact Collection — Refresh Uncommon Armor
# Checks advancements and updates display text
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_guard_helmet=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_guard_helmet,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Guard Helmet",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_guard_helmet=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_guard_helmet,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_dark_chestplate=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_dark_chestplate,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Dark Chestplate",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_dark_chestplate=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_dark_chestplate,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_royal_leggings=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_royal_leggings,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Royal Leggings",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_royal_leggings=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_royal_leggings,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_creed_boots=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_creed_boots,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Creed Boots",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_creed_boots=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_creed_boots,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_ore_helmet=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_ore_helmet,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ore Helmet",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_ore_helmet=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_uncommon_ore_helmet,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
