# ============================================================
# Black Market — Buy Tab Tick
# Detects clicks on buy buttons and page navigation
# ============================================================

# === PAGE NAVIGATION ===
execute as @e[type=interaction,tag=BM.NextBtn,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/gui/page_next
execute as @e[type=interaction,tag=BM.PrevBtn,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/gui/page_prev

# === BUY BUTTON CLICKS ===
# Row 0
execute as @e[type=interaction,tag=BM.BuyRow0,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/buy/on_click_row_0
# Row 1
execute as @e[type=interaction,tag=BM.BuyRow1,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/buy/on_click_row_1
# Row 2
execute as @e[type=interaction,tag=BM.BuyRow2,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/buy/on_click_row_2
# Row 3
execute as @e[type=interaction,tag=BM.BuyRow3,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/buy/on_click_row_3
# Row 4
execute as @e[type=interaction,tag=BM.BuyRow4,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/buy/on_click_row_4
# Row 5
execute as @e[type=interaction,tag=BM.BuyRow5,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/buy/on_click_row_5
# Row 6
execute as @e[type=interaction,tag=BM.BuyRow6,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/buy/on_click_row_6
