advancement revoke @s only evercraft:treasure/mechanics/charm/common

advancement revoke @s only evercraft:treasure/mechanics/charm/timer

scoreboard players add @s mt.charm_timer 600

execute store result score @s mt.common_chance run scoreboard players get #chance_common mt.var
execute store result score @s mt.rare_chance run scoreboard players get #chance_rare mt.var
execute store result score @s mt.epic_chance run scoreboard players get #chance_epic mt.var
execute store result score @s mt.mythical_chance run scoreboard players get #chance_mythical mt.var

scoreboard players operation @s mt.common_chance *= #5 mt.const
scoreboard players operation @s mt.common_chance /= #4 mt.const

scoreboard players operation @s mt.rare_chance *= #5 mt.const
scoreboard players operation @s mt.rare_chance /= #4 mt.const

scoreboard players operation @s mt.epic_chance *= #5 mt.const
scoreboard players operation @s mt.epic_chance /= #4 mt.const

scoreboard players operation @s mt.mythical_chance *= #5 mt.const
scoreboard players operation @s mt.mythical_chance /= #4 mt.const

title @s actionbar {color:"gray",text:"Activated Common Charm!"}

playsound minecraft:block.note_block.bell ambient @a[distance=..7] ~ ~ ~0.5 0 1