# Runeforge GUI — Collect (apply forged rune to held equipment)
# Run as player with RF.InMenu tag, at player position

# Verify state is 3 (forge complete)
execute unless score @s rf.state matches 3 run tellraw @s [{text:"The forge isn't ready yet!",color:"red"}]
execute unless score @s rf.state matches 3 run return 0

# Must be holding eligible equipment
# Swords
execute if items entity @s weapon.mainhand minecraft:diamond_sword run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_sword run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:iron_sword run scoreboard players set #rf_valid rf.temp 1
# Axes
execute if items entity @s weapon.mainhand minecraft:diamond_axe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_axe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:iron_axe run scoreboard players set #rf_valid rf.temp 1
# Pickaxes
execute if items entity @s weapon.mainhand minecraft:diamond_pickaxe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_pickaxe run scoreboard players set #rf_valid rf.temp 1
# Ranged
execute if items entity @s weapon.mainhand minecraft:trident run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:bow run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:crossbow run scoreboard players set #rf_valid rf.temp 1
# Hoes
execute if items entity @s weapon.mainhand minecraft:diamond_hoe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_hoe run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:iron_hoe run scoreboard players set #rf_valid rf.temp 1
# Shovels
execute if items entity @s weapon.mainhand minecraft:diamond_shovel run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_shovel run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:iron_shovel run scoreboard players set #rf_valid rf.temp 1
# Spears
execute if items entity @s weapon.mainhand minecraft:diamond_spear run scoreboard players set #rf_valid rf.temp 1
execute if items entity @s weapon.mainhand minecraft:netherite_spear run scoreboard players set #rf_valid rf.temp 1
# Shield
execute if items entity @s weapon.mainhand minecraft:shield run scoreboard players set #rf_valid rf.temp 1

execute unless score #rf_valid rf.temp matches 1 run tellraw @s [{text:"Hold eligible equipment in your mainhand!",color:"red"}]
execute unless score #rf_valid rf.temp matches 1 run return 0
scoreboard players set #rf_valid rf.temp 0

# Check if already runeforged
execute if items entity @s weapon.mainhand *[custom_data~{runeforge:1b}] run tellraw @s [{text:"This item is already runeforged!",color:"red"}]
execute if items entity @s weapon.mainhand *[custom_data~{runeforge:1b}] run return 0

# Load rune_id from marker
execute store result score @s rf.rune_id run data get entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_rune_id

# For Mysterichant (13), randomize to one of 1-12
execute if score @s rf.rune_id matches 13 store result score @s rf.rune_id run random value 1..12

# Apply the runeforge enchantment via item modifier
execute if score @s rf.rune_id matches 1 run item modify entity @s weapon.mainhand evercraft:runeforge/frostbite
execute if score @s rf.rune_id matches 2 run item modify entity @s weapon.mainhand evercraft:runeforge/life_steal
execute if score @s rf.rune_id matches 3 run item modify entity @s weapon.mainhand evercraft:runeforge/backstab
execute if score @s rf.rune_id matches 4 run item modify entity @s weapon.mainhand evercraft:runeforge/void_strike
execute if score @s rf.rune_id matches 5 run item modify entity @s weapon.mainhand evercraft:runeforge/ender_shift
execute if score @s rf.rune_id matches 6 run item modify entity @s weapon.mainhand evercraft:runeforge/thornmail
execute if score @s rf.rune_id matches 7 run item modify entity @s weapon.mainhand evercraft:runeforge/stalactite
execute if score @s rf.rune_id matches 8 run item modify entity @s weapon.mainhand evercraft:runeforge/gold_greed
execute if score @s rf.rune_id matches 9 run item modify entity @s weapon.mainhand evercraft:runeforge/absorption
execute if score @s rf.rune_id matches 10 run item modify entity @s weapon.mainhand evercraft:runeforge/guardian
execute if score @s rf.rune_id matches 11 run item modify entity @s weapon.mainhand evercraft:runeforge/reflect
execute if score @s rf.rune_id matches 12 run item modify entity @s weapon.mainhand evercraft:runeforge/force

# Reset marker state
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_state set value 0
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_rune_id set value 0
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.forge_started_at set value 0L
scoreboard players set @s rf.state 0
scoreboard players set @s rf.rune_id 0

# Epic effects
playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 0.8 0.8
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.8 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 50

# Title
title @s times 5 40 10
title @s title {text:" "}
title @s subtitle [{text:"Rune Bound!",color:"red",bold:true}]

tellraw @s [{text:"Enchantment permanently bound to your equipment!",color:"green"}]

# Track for achievements
scoreboard players add @s ach.runes_forged 1

# Close menu
function evercraft:runeforge/gui/close
