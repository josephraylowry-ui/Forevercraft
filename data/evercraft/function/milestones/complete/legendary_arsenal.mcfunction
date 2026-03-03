# Realm Milestone Complete: Legendary Arsenal — 5 mythicals found
scoreboard players set #rm_done_11 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Legendary Arsenal",desc:"Five mythical artifacts grace the realm!",reward:"All players receive a Mythical Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
execute as @a at @s run function evercraft:util/give_quest_crate {tier:"mythical"}
