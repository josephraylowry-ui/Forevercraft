# Count unique artifact sets the player has ever equipped (2pc+)
# Uses permanent tags so the count never decreases (high-water mark)

# Tag first-time 2pc equips (tags are permanent — never removed)
execute if score @s ec.dragonslayer matches 2.. run tag @s add ach_set_dragonslayer
execute if score @s ec.netherwalker matches 2.. run tag @s add ach_set_netherwalker
execute if score @s ec.frost matches 2.. run tag @s add ach_set_frost
execute if score @s ec.wither matches 2.. run tag @s add ach_set_wither
execute if score @s ec.phantom matches 2.. run tag @s add ach_set_phantom
execute if score @s ec.ocean matches 2.. run tag @s add ach_set_ocean
execute if score @s ec.ender matches 2.. run tag @s add ach_set_ender
execute if score @s ec.storm matches 2.. run tag @s add ach_set_storm
execute if score @s ec.nature matches 2.. run tag @s add ach_set_nature
execute if score @s ec.golem matches 2.. run tag @s add ach_set_golem
execute if score @s ec.sculk matches 2.. run tag @s add ach_set_sculk
execute if score @s ec.celestial matches 2.. run tag @s add ach_set_celestial
execute if score @s ec.blood matches 2.. run tag @s add ach_set_blood
execute if score @s ec.shadow matches 2.. run tag @s add ach_set_shadow
execute if score @s ec.crystal matches 2.. run tag @s add ach_set_crystal
execute if score @s ec.ember matches 2.. run tag @s add ach_set_ember
execute if score @s ec.ninja matches 2.. run tag @s add ach_set_ninja
execute if score @s ec.cloaked_skull matches 2.. run tag @s add ach_set_cloaked_skull
execute if score @s ec.space matches 2.. run tag @s add ach_set_space
execute if score @s ec.dragonmaster matches 2.. run tag @s add ach_set_dragonmaster
execute if score @s ec.titan matches 2.. run tag @s add ach_set_titan
execute if score @s ec.verdant matches 2.. run tag @s add ach_set_verdant
execute if score @s ec.journey matches 2.. run tag @s add ach_set_journey
execute if score @s ec.spelunker matches 2.. run tag @s add ach_set_spelunker
execute if score @s ec.infernal matches 2.. run tag @s add ach_set_infernal
execute if score @s ec.ender_dragon matches 2.. run tag @s add ach_set_ender_dragon
execute if score @s ec.fireforged matches 2.. run tag @s add ach_set_fireforged

# Count all permanent tags
scoreboard players set @s ach.sets_equipped 0
execute if entity @s[tag=ach_set_dragonslayer] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_netherwalker] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_frost] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_wither] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_phantom] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_ocean] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_ender] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_storm] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_nature] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_golem] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_sculk] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_celestial] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_blood] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_shadow] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_crystal] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_ember] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_ninja] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_cloaked_skull] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_space] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_dragonmaster] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_titan] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_verdant] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_journey] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_spelunker] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_infernal] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_ender_dragon] run scoreboard players add @s ach.sets_equipped 1
execute if entity @s[tag=ach_set_fireforged] run scoreboard players add @s ach.sets_equipped 1
