# Realm Milestone Complete: Pet Collectors — 25 pets discovered
scoreboard players set #rm_done_6 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Pet Collectors",desc:"25 unique companions have been discovered!",reward:"All players receive an Ornate Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
execute as @a at @s run function evercraft:util/give_quest_crate {tier:"ornate"}
