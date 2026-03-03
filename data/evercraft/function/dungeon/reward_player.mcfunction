# Dungeon Reward — Per-Player (runs as @s = individual dungeon participant)
# Determines reward tier based on THIS player's Dream Rate (luck attribute)

# Get THIS player's Dream Rate
execute store result score #dg_dr ec.var run attribute @s minecraft:luck get

# Check THIS player's inventory space
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# === REWARD TIERS ===
# DR 0-6:   Common (emeralds + XP)
# DR 7-12:  Uncommon
# DR 13-17: Rare
# DR 18-22: Ornate
# DR 23-29: Exquisite
# DR 30+:   Mythical

# Common tier (DR 0-6)
execute if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/common
execute if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/common
execute if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 0 run give @s emerald 16
execute if score #dg_dr ec.var matches ..6 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:16}}
execute if score #dg_dr ec.var matches ..6 run experience add @s 200 points
execute if score #dg_dr ec.var matches ..6 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Common Dungeon Crate",color:"white"}]

# Uncommon tier (DR 7-12)
execute if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/uncommon
execute if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/uncommon
execute if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 0 run give @s emerald 24
execute if score #dg_dr ec.var matches 7..12 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:24}}
execute if score #dg_dr ec.var matches 7..12 run experience add @s 400 points
execute if score #dg_dr ec.var matches 7..12 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Uncommon Dungeon Crate",color:"blue"}]

# Rare tier (DR 13-17)
execute if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/rare
execute if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/rare
execute if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 0 run give @s emerald 32
execute if score #dg_dr ec.var matches 13..17 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:32}}
execute if score #dg_dr ec.var matches 13..17 run experience add @s 800 points
execute if score #dg_dr ec.var matches 13..17 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Rare Dungeon Crate",color:"aqua"}]

# Ornate tier (DR 18-22)
execute if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/ornate
execute if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/ornate
execute if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 0 run give @s emerald 48
execute if score #dg_dr ec.var matches 18..22 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:48}}
execute if score #dg_dr ec.var matches 18..22 run experience add @s 1500 points
execute if score #dg_dr ec.var matches 18..22 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Ornate Dungeon Crate",color:"dark_purple"}]

# Exquisite tier (DR 23-29)
execute if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/exquisite
execute if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/exquisite
execute if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 0 run give @s emerald 64
execute if score #dg_dr ec.var matches 23..29 if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",count:64}}
execute if score #dg_dr ec.var matches 23..29 run experience add @s 3000 points
execute if score #dg_dr ec.var matches 23..29 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Exquisite Dungeon Crate",color:"light_purple"}]

# Mythical tier (DR 30+)
execute if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/mythical
execute if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/mythical
execute if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 0 run give @s emerald_block 4
execute if score #dg_dr ec.var matches 30.. if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:emerald_block",count:4}}
execute if score #dg_dr ec.var matches 30.. run experience add @s 5000 points
execute if score #dg_dr ec.var matches 30.. run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Reward: ",color:"gold"},{text:"Mythical Dungeon Crate!",color:"gold",bold:true}]

# Bonus: 25% chance of another Dungeon Key (random 1-4, key on 1)
execute store result score #dg_keyroll ec.var run random value 1..4
execute if score #dg_keyroll ec.var matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:dungeon/key
execute if score #dg_keyroll ec.var matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:dungeon/key
execute if score #dg_keyroll ec.var matches 1 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Bonus: Another Dungeon Key!",color:"light_purple"}]

# Warn if inventory was full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Some loot was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Modifier bonus: +25% XP if a modifier was active
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches ..6 run experience add @s 50 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 7..12 run experience add @s 100 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 13..17 run experience add @s 200 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 18..22 run experience add @s 375 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 23..29 run experience add @s 750 points
execute if score #dg_modifier ec.var matches 1.. if score #dg_dr ec.var matches 30.. run experience add @s 1250 points
execute if score #dg_modifier ec.var matches 1.. run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Modifier Bonus: +25% XP!",color:"light_purple"}]

# Track for achievements
scoreboard players add @s ach.dungeons_done 1
