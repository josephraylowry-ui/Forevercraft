# Classes Refresh — Tank Shields
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/deku_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_deku_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Deku Shield",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/deku_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_deku_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/tower_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_tower_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Tower Shield",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/tower_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_tower_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonslayer_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dragonslayer Shield",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonslayer_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dragonmaster Shield",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/golden_goliath_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_goliath_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Order of the Stone Shield",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golden_goliath_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_goliath_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/command_block_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_command_block_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Command Block Shield",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/command_block_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_command_block_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/drowned_king_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_drowned_king_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Drowned King Shield",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/drowned_king_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_drowned_king_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/trial_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_trial_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Trial Shield",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/trial_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_trial_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/mushroom_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mushroom_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mushroom Shield",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mushroom_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mushroom_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/ocean_tower_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ocean_tower_shield,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ocean Tower Shield",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_tower_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ocean_tower_shield,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
