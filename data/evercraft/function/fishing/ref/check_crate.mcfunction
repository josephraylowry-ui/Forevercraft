# Check if player should receive a crate when fishing
# Called from on_catch (advancement-based detection via fishing_rod_hooked)

# Dream Surge Event: Ornate+ only with 2% mythical
execute if score #ec_event_active ec.var matches 1 run function evercraft:event/roll_event_crate_fish
execute if score #ec_event_active ec.var matches 1 run return 0

# Check inventory space
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Normal mode: Give loot from the crate loot table (weighted random)
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crate
# Inv full: bypass dummy system, spawn barrel directly
execute if score #inv_full ec.var matches 1 at @s store result score #crate_spawned ec.var run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crate_direct
execute if score #inv_full ec.var matches 1 if score #crate_spawned ec.var matches 1.. run scoreboard players add crates_fished fc.global_stats 1
execute if score #inv_full ec.var matches 1 if score #crate_spawned ec.var matches 1.. run scoreboard players add @s fc.total_crates 1

# Tempest Lip Ripper — Treasure Hunter: second crate roll when held
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crate
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] if score #inv_full ec.var matches 1 at @s store result score #crate_spawned ec.var run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crate_direct
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] if score #inv_full ec.var matches 1 if score #crate_spawned ec.var matches 1.. run scoreboard players add crates_fished fc.global_stats 1
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] if score #inv_full ec.var matches 1 if score #crate_spawned ec.var matches 1.. run scoreboard players add @s fc.total_crates 1

# === ROD ABILITIES (on-catch procs) ===

# Marrow Caster — Bone Lure: 5% chance for mob crate loot
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"rare_bone_fishing_rod"}] store result score #rod_roll adv.temp run random value 1..100
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"rare_bone_fishing_rod"}] if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:mob_crates/common
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"rare_bone_fishing_rod"}] if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:mob_crates/common
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"rare_bone_fishing_rod"}] if score #rod_roll adv.temp matches 1..5 run tellraw @s [{text:"Bone Lure ",color:"aqua"},{text:"activated! Creature loot pulled from the depths.",color:"gray",italic:true}]
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"rare_bone_fishing_rod"}] if score #rod_roll adv.temp matches 1..5 run playsound minecraft:entity.skeleton.ambient master @s ~ ~ ~ 0.6 1.2

# Petalwhip — Harvest Hook: 5% chance for harvest crate loot
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] store result score #rod_roll adv.temp run random value 1..100
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crate
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crate_direct
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] if score #rod_roll adv.temp matches 1..5 run tellraw @s [{text:"Harvest Hook ",color:"dark_purple"},{text:"activated! Nature's bounty rises.",color:"gray",italic:true}]
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] if score #rod_roll adv.temp matches 1..5 run playsound minecraft:block.cherry_leaves.break master @s ~ ~ ~ 0.8 1.0

# Infernal Hook — Nether Dredge: 5% chance (15% in Nether) for nether loot
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:overworld store result score #rod_roll adv.temp run random value 1..100
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:overworld if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/nether_dredge
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:overworld if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/nether_dredge
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:overworld if score #rod_roll adv.temp matches 1..5 run tellraw @s [{text:"Nether Dredge! ",color:"gold"},{text:"Volcanic spoils surface.",color:"gray",italic:true}]
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:the_nether store result score #rod_roll adv.temp run random value 1..100
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:the_nether if score #rod_roll adv.temp matches 1..15 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/nether_dredge
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:the_nether if score #rod_roll adv.temp matches 1..15 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/nether_dredge
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:the_nether if score #rod_roll adv.temp matches 1..15 run tellraw @s [{text:"Nether Dredge! ",color:"gold"},{text:"The lava yields its treasures.",color:"gray",italic:true}]
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:overworld if score #rod_roll adv.temp matches 1..5 run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 0.8
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] in minecraft:the_nether if score #rod_roll adv.temp matches 1..15 run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 0.8

# Infernal Hook — Searing Line: auto-cook caught fish
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] run function evercraft:fishing/ref/searing_line

# Fishing multi-catch proc (Advantage Tree)
execute if score @s adv.fishing matches 1.. run function evercraft:advantage/fishing/multi_catch

# Warn if inventory was full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your fishing crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
