# Artifact Transmutation — Deposit held artifact
# Run as: player, at player position
# Checks mainhand for an artifact, determines/validates tier, consumes it

# Calculate required count (tier-variable + Artificer discount)
function evercraft:transmute/gui/calc_required

# Already full?
execute if score @s tx.count >= @s tx.required run return run tellraw @s [{text:"[Transmute] ",color:"dark_purple"},{text:"Slots full! Click [Transmute!] to upgrade.",color:"yellow"}]

# Check if holding an artifact
execute unless items entity @s weapon.mainhand *[custom_data~{is_artifact:true}] run return run tellraw @s [{text:"[Transmute] ",color:"dark_purple"},{text:"Hold an artifact in your main hand first!",color:"red"}]

# Check if it's mythical (can't upgrade mythical)
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"mythical"}] run return run tellraw @s [{text:"[Transmute] ",color:"dark_purple"},{text:"Mythical artifacts cannot be upgraded further!",color:"red"}]

# Determine tier of held artifact
scoreboard players set @s tx.temp 0
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"common"}] run scoreboard players set @s tx.temp 1
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"uncommon"}] run scoreboard players set @s tx.temp 2
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"rare"}] run scoreboard players set @s tx.temp 3
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"ornate"}] run scoreboard players set @s tx.temp 4
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"exquisite"}] run scoreboard players set @s tx.temp 5

# If tier couldn't be determined (missing tier field), reject
execute if score @s tx.temp matches 0 run return run tellraw @s [{text:"[Transmute] ",color:"dark_purple"},{text:"This artifact has no tier data and can't be transmuted.",color:"red"}]

# First deposit — set the tier, then recalculate required with known tier
execute if score @s tx.count matches 0 run scoreboard players operation @s tx.tier = @s tx.temp
execute if score @s tx.count matches 0 run function evercraft:transmute/gui/calc_required

# Subsequent deposits — verify tier matches
execute if score @s tx.count matches 1.. unless score @s tx.temp = @s tx.tier run return run tellraw @s [{text:"[Transmute] ",color:"dark_purple"},{text:"Tier mismatch! All artifacts must be the same tier.",color:"red"}]

# === CONSUME THE ARTIFACT ===
execute if score @s tx.tier matches 1 run clear @s *[custom_data~{is_artifact:true,tier:"common"}] 1
execute if score @s tx.tier matches 2 run clear @s *[custom_data~{is_artifact:true,tier:"uncommon"}] 1
execute if score @s tx.tier matches 3 run clear @s *[custom_data~{is_artifact:true,tier:"rare"}] 1
execute if score @s tx.tier matches 4 run clear @s *[custom_data~{is_artifact:true,tier:"ornate"}] 1
execute if score @s tx.tier matches 5 run clear @s *[custom_data~{is_artifact:true,tier:"exquisite"}] 1

# Increment deposit count
scoreboard players add @s tx.count 1

# Feedback
playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.3 1.5
particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 0.5 15

# Refresh GUI
function evercraft:transmute/gui/refresh
