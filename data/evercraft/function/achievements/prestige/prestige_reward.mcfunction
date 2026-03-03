# ============================================================
# PRESTIGE — Grant Prestige Bonus Reward
# Called from each reset function after prestige counter increments
# Grants bonus XP + a mythical crate as prestige reward
# ============================================================

# Check inventory space before giving crate
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Prestige bonus: Mythical Achievement Crate + scaling XP
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:achievements/crates/mythical
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:achievements/crates/mythical
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your prestige crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Scaling XP: 500 base + 250 per prestige level (from total prestiges)
# Calculate total prestige level across all tabs
scoreboard players set @s ec.temp 0
scoreboard players operation @s ec.temp += @s ach.prestige_combat
scoreboard players operation @s ec.temp += @s ach.prestige_gathering
scoreboard players operation @s ec.temp += @s ach.prestige_companions
scoreboard players operation @s ec.temp += @s ach.prestige_exploration
scoreboard players operation @s ec.temp += @s ach.prestige_collection
scoreboard players operation @s ec.temp += @s ach.prestige_growth

# Base 500 XP
experience add @s 500 points

# Bonus 250 XP per total prestige level (capped at 10 for sanity)
execute if score @s ec.temp matches 2.. run experience add @s 250 points
execute if score @s ec.temp matches 3.. run experience add @s 250 points
execute if score @s ec.temp matches 4.. run experience add @s 250 points
execute if score @s ec.temp matches 5.. run experience add @s 250 points
execute if score @s ec.temp matches 6.. run experience add @s 250 points
execute if score @s ec.temp matches 7.. run experience add @s 250 points
execute if score @s ec.temp matches 8.. run experience add @s 250 points
execute if score @s ec.temp matches 9.. run experience add @s 250 points
execute if score @s ec.temp matches 10.. run experience add @s 250 points

tellraw @s ["",{text:"  ",color:"gray"},{text:"Prestige Reward: ",color:"gold"},{text:"MYTHICAL Crate",color:"gold",bold:true},{text:" + ",color:"gray"},{text:"Bonus XP",color:"green",bold:true},{text:"!",color:"gray"}]
