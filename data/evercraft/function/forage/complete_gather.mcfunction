# Foraging Bush: Gathering complete — award item
# Run as player, at player position

# Hide boss bar and reset state
bossbar set evercraft:forage_gather visible false
scoreboard players set @s ec.fg_picking 0
scoreboard players set @s ec.fg_progress 0

# Despawn the bush (nearest marker within 8 blocks)
execute as @e[type=marker,tag=ec.forage_data,distance=..8,limit=1,sort=nearest] at @s run function evercraft:forage/despawn_bush

# Roll loot and give to player
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:forage/bush_drops
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:forage/bush_drops

# Warn if inventory full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your loot was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Hearty Harvest (P1): 10% chance for bonus ingredients
execute if score @s adv.pa_culi1 matches 1 store result score #hh_roll ec.temp run random value 1..10
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:forage/bush_drops
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:forage/bush_drops
execute if score @s adv.pa_culi1 matches 1 if score #hh_roll ec.temp matches 1 run tellraw @s [{text:"[Hearty Harvest] ",color:"green"},{text:"Bonus ingredients!",color:"yellow"}]

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
execute if score #ft_hit ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:forage/fortune_drops
execute if score #ft_hit ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:forage/fortune_drops
execute if score #ft_hit ec.temp matches 1 run tellraw @s [{text:"[Fortune] ",color:"aqua"},{text:"Your keen eye found a rare bonus!",color:"light_purple"}]

# +4 Harvest tree progress
scoreboard players add @s adv.stat_harvest 4

# 1/100 chance for a bonus crate
execute store result score #fg_crate ec.temp run random value 1..100
execute if score #fg_crate ec.temp matches 1 store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #fg_crate ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:cooking/bonus_crate
execute if score #fg_crate ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:cooking/bonus_crate
execute if score #fg_crate ec.temp matches 1 run tellraw @s [{text:"[Foraging] ",color:"green"},{text:"A crate tumbled out of the bush!",color:"yellow"}]
execute if score #fg_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #fg_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Track for achievements
scoreboard players add @s ach.forages_done 1

# Completion effects
playsound minecraft:block.sweet_berry_bush.pick_berries master @s ~ ~ ~ 0.8 1.2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 0.8
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 15
