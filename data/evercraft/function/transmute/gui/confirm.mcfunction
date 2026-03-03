# Artifact Transmutation — Confirm (Transmute!)
# Run as: player, at player position
# Validates deposit count, consumes, rolls next tier

# Calculate required count (tier-variable + Artificer discount)
function evercraft:transmute/gui/calc_required

# Check if enough artifacts deposited
execute if score @s tx.count < @s tx.required run return run tellraw @s [{text:"[Transmute] ",color:"dark_purple"},{text:"Not enough artifacts deposited!",color:"red"}]

# Check we have a valid tier
execute if score @s tx.tier matches ..0 run return run tellraw @s [{text:"[Transmute] ",color:"dark_purple"},{text:"No artifacts have been deposited.",color:"red"}]
execute if score @s tx.tier matches 6.. run return run tellraw @s [{text:"[Transmute] ",color:"dark_purple"},{text:"Cannot upgrade beyond Mythical!",color:"red"}]

# === Record discount usage BEFORE transmuting ===
# If discount was applied this transmute, mark today as the discount day
execute if score @s tx.has_disc matches 1 store result score @s tx.disc_day run time query day

# === TRANSMUTE! ===
# Roll the next tier artifact
function evercraft:transmute/roll/give_result

# Reset state
scoreboard players set @s tx.count 0
scoreboard players set @s tx.tier 0

# Effects
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.8 0.6
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.0
particle minecraft:totem_of_undying ~ ~1.5 ~ 0.5 0.5 0.5 0.3 50
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1.0 30

# Refresh GUI (back to empty state)
function evercraft:transmute/gui/refresh

# Track for achievements
scoreboard players add @s ach.transmutes_done 1

# Announce
tellraw @s [{text:"[Transmute] ",color:"dark_purple"},{text:"Transmutation complete! Check your inventory.",color:"green"}]
