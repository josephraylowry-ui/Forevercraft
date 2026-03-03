# ============================================================
# Black Market — Refresh GUI Content
# Clears slot elements and rebuilds for current tab
# ============================================================

# Kill all slot/content elements (keep shell: BG, title, tabs, close, netherite)
execute at @s run kill @e[type=text_display,tag=BM.SlotEl,distance=..8]
execute at @s run kill @e[type=interaction,tag=BM.SlotEl,distance=..8]

# Update tab button colors (active = gold+bold, inactive = gray)
execute if score @s ec.bm_tab matches 1 as @e[type=text_display,tag=BM.TabBuyTxt,distance=..8,limit=1] run data modify entity @s text set value {text:"[ Buy ]",color:"gold",bold:true}
execute unless score @s ec.bm_tab matches 1 as @e[type=text_display,tag=BM.TabBuyTxt,distance=..8,limit=1] run data modify entity @s text set value {text:"[ Buy ]",color:"gray"}
execute if score @s ec.bm_tab matches 2 as @e[type=text_display,tag=BM.TabSellTxt,distance=..8,limit=1] run data modify entity @s text set value {text:"[ Sell ]",color:"gold",bold:true}
execute unless score @s ec.bm_tab matches 2 as @e[type=text_display,tag=BM.TabSellTxt,distance=..8,limit=1] run data modify entity @s text set value {text:"[ Sell ]",color:"gray"}
execute if score @s ec.bm_tab matches 3 as @e[type=text_display,tag=BM.TabListTxt,distance=..8,limit=1] run data modify entity @s text set value {text:"[ Listings ]",color:"gold",bold:true}
execute unless score @s ec.bm_tab matches 3 as @e[type=text_display,tag=BM.TabListTxt,distance=..8,limit=1] run data modify entity @s text set value {text:"[ Listings ]",color:"gray"}

# Dispatch to tab-specific refresh
execute if score @s ec.bm_tab matches 1 run function evercraft:black_market/gui/refresh_buy
execute if score @s ec.bm_tab matches 2 run function evercraft:black_market/gui/refresh_sell
execute if score @s ec.bm_tab matches 3 run function evercraft:black_market/gui/refresh_listings

# Update netherite count display
function evercraft:black_market/gui/update_netherite
