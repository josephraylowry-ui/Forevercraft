
scoreboard players set @s mt.sponge_rune 200

playsound minecraft:block.sponge.absorb master @a[distance=..20] ~ ~ ~ 0.75 0.75 1

particle block{block_state:"minecraft:sponge"} ~ ~ ~ 0.2 0.200 0.2 0.1 200 force @a

function evercraft:treasure/runes/sponge/particles


advancement revoke @s only evercraft:treasure/runes/sponge_rune