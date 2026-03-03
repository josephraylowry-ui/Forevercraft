function evercraft:treasure/database/fetch_uuid/generate
function evercraft:treasure/database/set with entity @s

scoreboard players set @s mt.trident 0
scoreboard players set @s mt.hold_trident 0
scoreboard players set @s mt.luck 0
scoreboard players set @s mt.charm_timer 0

# Apply current server frequency rates to joining player
execute store result score @s mt.common_chance run scoreboard players get #chance_common mt.var
execute store result score @s mt.uncommon_chance run scoreboard players get #chance_uncommon mt.var
execute store result score @s mt.rare_chance run scoreboard players get #chance_rare mt.var
execute store result score @s mt.epic_chance run scoreboard players get #chance_epic mt.var
execute store result score @s mt.exquisite_chance run scoreboard players get #chance_exquisite mt.var
execute store result score @s mt.mythical_chance run scoreboard players get #chance_mythical mt.var

execute store result score @s mt.break_stone run scoreboard players get @s mt.total

execute store result score @s mt.common_count run scoreboard players get @s mt.common_count
execute store result score @s mt.rare_count run scoreboard players get @s mt.rare_count
execute store result score @s mt.epic_count run scoreboard players get @s mt.epic_count
execute store result score @s mt.mythical_count run scoreboard players get @s mt.mythical_count

advancement grant @s only evercraft:treasure/mechanics/small/timer
advancement grant @s only evercraft:treasure/mechanics/big/timer
advancement grant @s only evercraft:treasure/mechanics/reach/timer
advancement grant @s only evercraft:treasure/mechanics/step_height/timer
advancement grant @s only evercraft:treasure/mechanics/light/timer