# Runeforge System — Load
# Workstation to permanently bind rune effects to weapons/armor

# Scoreboards
scoreboard objectives add rf.rune_id dummy "Deposited Rune ID (1-13)"
scoreboard objectives add rf.temp dummy "Runeforge Temp"
scoreboard objectives add rf.state dummy "Runeforge State"
scoreboard objectives add rf.timer dummy "Runeforge Timer Temp"

# Initialize
execute unless score #rf_active ec.var matches 0.. run scoreboard players set #rf_active ec.var 0

# Bootstrap schedule
schedule function evercraft:runeforge/tick 1s replace
