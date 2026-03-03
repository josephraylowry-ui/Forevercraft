# Ore Node: Mining complete — award item
# Run as player, at player position

# Hide boss bar and reset state
bossbar set evercraft:prospect_mine visible false
scoreboard players set @s ec.pr_picking 0
scoreboard players set @s ec.pr_progress 0

# Despawn the node (nearest marker within 8 blocks)
execute as @e[type=marker,tag=ec.prospect_data,distance=..8,limit=1,sort=nearest] at @s run function evercraft:prospect/despawn_node

# Roll loot and give to player
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:prospect/node_drops
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:prospect/node_drops

# Warn if inventory full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your loot was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Hearty Harvest (P1): 10% chance for bonus drops
execute if score @s adv.pa_culi1 matches 1 store result score #hh_roll ec.temp run random value 1..10
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:prospect/node_drops
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:prospect/node_drops
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 run tellraw @s [{text:"[Hearty Harvest] ",color:"green"},{text:"Bonus ore drops!",color:"yellow"}]

# Fortune bonus: held tool with fortune gives chance for bonus rare drop
# Fortune 1: 2%, Fortune 2: 4%, Fortune 3: 6%, Fortune 4: 8%, Fortune 5: 10%
scoreboard players set #ft_thresh ec.temp 0
execute if predicate evercraft:harvest/enchantments/fortune_1 run scoreboard players set #ft_thresh ec.temp 2
execute if predicate evercraft:harvest/enchantments/fortune_2 run scoreboard players set #ft_thresh ec.temp 4
execute if predicate evercraft:harvest/enchantments/fortune_3 run scoreboard players set #ft_thresh ec.temp 6
execute if predicate evercraft:harvest/enchantments/fortune_4 run scoreboard players set #ft_thresh ec.temp 8
execute if predicate evercraft:harvest/enchantments/fortune_5 run scoreboard players set #ft_thresh ec.temp 10
scoreboard players set #ft_hit ec.temp 0
execute if score #ft_thresh ec.temp matches 1.. store result score #ft_roll ec.temp run random value 1..100
execute if score #ft_thresh ec.temp matches 1.. if score #ft_roll ec.temp <= #ft_thresh ec.temp run scoreboard players set #ft_hit ec.temp 1
execute if score #ft_hit ec.temp matches 1 store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #ft_hit ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:prospect/fortune_drops
execute if score #ft_hit ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:prospect/fortune_drops
execute if score #ft_hit ec.temp matches 1 run tellraw @s [{text:"[Fortune] ",color:"aqua"},{text:"Your keen eye found a rare bonus!",color:"light_purple"}]

# +4 Mining tree progress
scoreboard players add @s adv.stat_mine 4

# 1/100 chance for a bonus crate
execute store result score #pr_crate ec.temp run random value 1..100
execute if score #pr_crate ec.temp matches 1 store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #pr_crate ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:cooking/bonus_crate
execute if score #pr_crate ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:cooking/bonus_crate
execute if score #pr_crate ec.temp matches 1 run tellraw @s [{text:"[Prospecting] ",color:"white"},{text:"A crate was lodged in the rock!",color:"yellow"}]
execute if score #pr_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #pr_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# 1/3000 chance for Prospector's Dream Ore (permanent +1 dream rate)
execute if score @s ec.dream_ore_count matches 0 store result score #dream_roll ec.temp run random value 1..3000
execute if score @s ec.dream_ore_count matches 0 if score #dream_roll ec.temp matches 1 run loot give @s loot evercraft:items/prospectors_dream_ore
execute if score @s ec.dream_ore_count matches 0 if score #dream_roll ec.temp matches 1 run tellraw @s [{text:"✦ ",color:"gold"},{text:"A ",color:"yellow"},{text:"Prospector's Dream Ore",color:"yellow",bold:true},{text:" gleams from the rock!",color:"yellow"}]

# Track for achievements
scoreboard players add @s ach.prospects_done 1

# Completion effects
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.6 1.2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 0.8
particle minecraft:electric_spark ~ ~0.5 ~ 0.3 0.3 0.3 0.02 15

# Award XP for mining
experience add @s 5 points
