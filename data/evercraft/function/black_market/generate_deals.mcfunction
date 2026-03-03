# ============================================================
# Black Market — Generate 14 Daily Deals
# Picks 14 random items from the pool of 56
# Only regenerates if the day has changed
# ============================================================

# Check if deals are already current
execute store result score #bm_current_day ec.bm_temp run time query day
execute store result score #bm_deal_day ec.bm_temp run data get storage eden:database black_market.deal_day

# If same day, skip
execute if score #bm_current_day ec.bm_temp = #bm_deal_day ec.bm_temp run return 0

# New day — clear old deals and generate fresh ones
data modify storage eden:database black_market.deals set value []

# Roll 14 random indices (0-55) and copy from pool
# Each roll picks a random pool entry via macro
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
execute store result storage eden:database black_market.temp.index int 1 run random value 0 55
function evercraft:black_market/roll_deal with storage eden:database black_market.temp

# Store current day
execute store result storage eden:database black_market.deal_day int 1 run time query day
