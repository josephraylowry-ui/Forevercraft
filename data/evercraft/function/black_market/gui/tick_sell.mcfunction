# ============================================================
# Black Market — Sell Tab Tick
# Detects appraise and sell button clicks
# ============================================================

# [Appraise] button click
execute as @e[type=interaction,tag=BM.AppraiseBtn,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/sell/on_click_appraise

# [Sell Item] button click
execute as @e[type=interaction,tag=BM.SellBtn,distance=..8,limit=1] if data entity @s interaction run function evercraft:black_market/sell/on_click_sell
