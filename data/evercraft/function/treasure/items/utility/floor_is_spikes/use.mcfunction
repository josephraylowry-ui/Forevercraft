advancement revoke @s only evercraft:treasure/items/utility/floor_is_spikes

tag @s add mt.used_floor_is_spikes

function evercraft:treasure/database/get with entity @s

execute as @n[tag=mt.floor_is_spikes] at @s run function evercraft:treasure/items/utility/floor_is_spikes/spawn with storage evercraft:treasure/write data