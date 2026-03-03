# Artifact Transmutation GUI — Check Clicks
# Run as: player with TX.InMenu

# Close button
execute as @e[type=interaction,tag=TX.CloseBtn,distance=..5] if data entity @s interaction run function evercraft:transmute/gui/click_close

# Deposit button
execute as @e[type=interaction,tag=TX.DepositBtn,distance=..5] if data entity @s interaction run function evercraft:transmute/gui/click_deposit

# Transmute button
execute as @e[type=interaction,tag=TX.TransmuteBtn,distance=..5] if data entity @s interaction run function evercraft:transmute/gui/click_transmute
