scoreboard players add @s mt.var 1

particle block{block_state:dripstone_block} ~ ~ ~ 10 10 10 0 200 force

# Copy player_name to temp storage for macro (CustomName is a text component, not a plain string)
data modify storage evercraft:temp necromancy.player_name set from entity @s data.player_name

execute if entity @s[scores={mt.var=..20}] at @s run function evercraft:treasure/items/utility/necromancy/effect with storage evercraft:temp necromancy

execute if entity @s[scores={mt.var=21..}] run function evercraft:treasure/items/utility/necromancy/kill with storage evercraft:temp necromancy