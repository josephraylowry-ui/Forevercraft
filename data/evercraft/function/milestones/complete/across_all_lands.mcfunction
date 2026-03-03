# Realm Milestone Complete: Across All Lands — All 25 biomes
scoreboard players set #rm_done_10 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Across All Lands",desc:"Every biome in the realm has been explored!",reward:"Title: World Walkers + Mythical Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
execute as @a at @s run function evercraft:util/give_quest_crate {tier:"mythical"}
