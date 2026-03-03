# Realm Milestone Complete: The Hunt Begins — 25 patron kills
scoreboard players set #rm_done_5 ec.var 1
data modify storage evercraft:milestones temp set value {name:"The Hunt Begins",desc:"25 patron mobs have been slain across the realm!",reward:"All players receive an Ornate Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
execute as @a at @s run function evercraft:util/give_quest_crate {tier:"ornate"}
