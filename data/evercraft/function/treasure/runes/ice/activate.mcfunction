
scoreboard players set @s mt.ice_rune 200

playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 0.75 0.75 1

effect give @s resistance 1 2 true

function evercraft:treasure/runes/ice/particles


advancement revoke @s only evercraft:treasure/runes/ice_rune