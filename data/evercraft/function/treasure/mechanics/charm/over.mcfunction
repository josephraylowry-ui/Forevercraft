title @s actionbar {color:"gray",text:"Your charm ran out!"}

scoreboard players set @s mt.charm_timer 0

execute store result score @s mt.common_chance run scoreboard players get #chance_common mt.var
execute store result score @s mt.rare_chance run scoreboard players get #chance_rare mt.var
execute store result score @s mt.epic_chance run scoreboard players get #chance_epic mt.var
execute store result score @s mt.mythical_chance run scoreboard players get #chance_mythical mt.var
execute store result score @s mt.mythical_chance run scoreboard players get #chance_mythical mt.var

playsound block.beacon.deactivate player @s ~ ~ ~ 1 2 1