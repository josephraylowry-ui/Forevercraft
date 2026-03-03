
execute as @e[type=#evercraft:treasure/projectiles,distance=..50] run function evercraft:treasure/runes/reverse/reverse

playsound minecraft:entity.evoker.cast_spell master @a[distance=..50] ~ ~ ~ 1 2 1


function evercraft:treasure/runes/reverse/particles

advancement revoke @s only evercraft:treasure/runes/reverse_rune