
scoreboard players set @s mt.black_rune 400

attribute @s armor modifier add mt.black_rune 0.2 add_multiplied_total
attribute @s armor_toughness modifier add mt.black_rune 0.2 add_multiplied_total

playsound minecraft:block.anvil.destroy master @a[distance=..20] ~ ~ ~ 0.2 0.2 1

particle minecraft:large_smoke ~ ~ ~ 0.2 0.200 0.2 0.1 50 force @a

function evercraft:treasure/runes/black/particles

advancement revoke @s only evercraft:treasure/runes/black_rune