tag @s add mt.entity
scoreboard players set @s mt.entity 500

execute on attacker run function evercraft:treasure/database/get with entity @s

function evercraft:treasure/items/weapons/oceanic_spear/damage with storage evercraft:treasure/write data

execute if predicate evercraft:treasure/weapons/wet_chance run function evercraft:treasure/items/weapons/oceanic_spear/apply_wet