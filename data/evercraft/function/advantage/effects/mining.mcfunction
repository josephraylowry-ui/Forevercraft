# Mining Effect — +4% block break speed per level (persistent)
# Remove old modifier, calculate new value, apply via macro

attribute @s block_break_speed modifier remove evercraft:adv_mining

# Calculate: level * 4 = percentage points, store as decimal (4 -> 0.04)
scoreboard players operation #speed adv.temp = @s adv.mining
scoreboard players operation #speed adv.temp *= #4 adv.temp
execute store result storage evercraft:advantage mine_speed double 0.01 run scoreboard players get #speed adv.temp

function evercraft:advantage/effects/apply_mining with storage evercraft:advantage
