playsound minecraft:entity.horse.angry master @a[distance=..20] ~ ~ ~ 0.2 2 1

execute as @e[type=#evercraft:treasure/ridable,distance=..10] run function evercraft:treasure/runes/ally/as

advancement revoke @s only evercraft:treasure/runes/ally_rune

function evercraft:treasure/runes/ally/particles