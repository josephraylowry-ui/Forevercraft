# Mob Crates - Patron Mythical Kill
# 100% chance to spawn crate — mythical patrons always drop (scaled from base mob rates)

advancement revoke @s only evercraft:mob_crates/killed_patron_mythical
# Mythical patrons always drop their crate (100% base chance)
function evercraft:mob_crates/spawn/mythical
# Victorian P3: Spoils of War — second roll for bonus crate
execute if score @s adv.pa_vict3 matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.50} run function evercraft:mob_crates/spawn/mythical
# Charm 2x: guaranteed extra crate when charm is active (mythical = 100% base)
execute if score @s mt.charm_timer matches 1.. run function evercraft:mob_crates/spawn/mythical
# Looting bonus: extra crate roll (+0.5% per level, max +2.5% at Looting 5)
execute if predicate evercraft:mob_crates/enchantments/looting_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} run function evercraft:mob_crates/spawn/mythical
execute unless predicate evercraft:mob_crates/enchantments/looting_5 if predicate evercraft:mob_crates/enchantments/looting_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} run function evercraft:mob_crates/spawn/mythical
execute unless predicate evercraft:mob_crates/enchantments/looting_4 if predicate evercraft:mob_crates/enchantments/looting_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} run function evercraft:mob_crates/spawn/mythical
execute unless predicate evercraft:mob_crates/enchantments/looting_3 if predicate evercraft:mob_crates/enchantments/looting_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} run function evercraft:mob_crates/spawn/mythical
execute unless predicate evercraft:mob_crates/enchantments/looting_2 if predicate evercraft:mob_crates/enchantments/looting_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} run function evercraft:mob_crates/spawn/mythical
# Check inventory space before bonus drop
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:mob_crates/bonus/mythical
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:mob_crates/bonus/mythical

# 0.5% chance to drop Patron's Dream Essence (+1 permanent DR)
execute if score @s ec.patron_dream_count matches 0 if predicate {"condition":"minecraft:random_chance","chance":0.005} run loot give @s loot evercraft:items/patrons_dream_essence
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your bonus loot was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
