advancement revoke @s only evercraft:treasure/items/utility/necromancy

function evercraft:treasure/database/get with entity @s

team join mt.necromancy

execute as @n[tag=mt.necromancy] at @s run function evercraft:treasure/items/utility/necromancy/spawn with storage evercraft:treasure/write data