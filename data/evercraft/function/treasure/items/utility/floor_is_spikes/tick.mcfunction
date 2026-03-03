scoreboard players add @s mt.var 1

particle block{block_state:dripstone_block} ~ ~ ~ 10 10 10 0 200 force

# Copy player_id to temp storage for macro (CustomName is a text component, not a plain string)
data modify storage evercraft:temp floor_spikes.player_id set from entity @s data.player_id

execute if entity @s[scores={mt.var=..10}] as @e[type=#evercraft:treasure/targets,tag=!mt.used_floor_is_spikes,distance=..20,predicate=evercraft:treasure/on_ground] run function evercraft:treasure/items/utility/floor_is_spikes/effect with storage evercraft:temp floor_spikes

execute if entity @s[scores={mt.var=11..}] run function evercraft:treasure/items/utility/floor_is_spikes/kill with storage evercraft:temp floor_spikes