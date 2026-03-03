# Classes Refresh — Striker Maces
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/highland_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_mace,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Highland Mace",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/highland_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_mace,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/plunger=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plunger,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Plunger",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/plunger=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plunger,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/frying_pan=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frying_pan,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Frying Pan",color:"green"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frying_pan=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frying_pan,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/combat_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_combat_mace,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Combat Mace",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/combat_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_combat_mace,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hammer_of_gravity,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Hammer of Gravity",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hammer_of_gravity,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mjolnir",color:"blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_pwnhammer,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Pwnhammer",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_pwnhammer,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dev_hammer,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dev Hammer",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dev_hammer,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonheart_mace,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dragonheart Mace",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonheart_mace,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/mace_of_legends=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mace_of_legends,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mace of Legends",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mace_of_legends=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mace_of_legends,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/stormlander=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormlander,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Stormlander",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/stormlander=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormlander,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/romeo_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_portal_staff,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Portal Staff",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/romeo_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_portal_staff,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}

execute if entity @s[advancements={evercraft:artifacts/collected/xara_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_void_voyage,distance=..7,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Void Voyage",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/xara_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_void_voyage,distance=..7,limit=1] text set value {text:"? ???",color:"dark_gray"}
