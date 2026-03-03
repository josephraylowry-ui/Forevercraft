# Dungeon Instance System — Show Lockout Remaining Time
# #dg_elapsed already computed (gametime - lockout timestamp)
# Remaining = 504000 - elapsed, convert to in-game days + hours

scoreboard players set #dg_remaining ec.var 504000
scoreboard players operation #dg_remaining ec.var -= #dg_elapsed ec.var

# Convert remaining ticks to in-game days (/ 72000)
scoreboard players operation #dg_remain_days ec.var = #dg_remaining ec.var
scoreboard players operation #dg_remain_days ec.var /= #72000 ec.const

# Get remaining hours within the day: (remaining % 72000) / 3000
scoreboard players operation #dg_remain_hrs ec.var = #dg_remaining ec.var
scoreboard players operation #dg_remain_hrs ec.var %= #72000 ec.const
scoreboard players set #3000 ec.var 3000
scoreboard players operation #dg_remain_hrs ec.var /= #3000 ec.var

# Store to storage for macro display
execute store result storage evercraft:dungeon lockout.days int 1 run scoreboard players get #dg_remain_days ec.var
execute store result storage evercraft:dungeon lockout.hours int 1 run scoreboard players get #dg_remain_hrs ec.var
function evercraft:dungeon/lockout_display with storage evercraft:dungeon lockout
