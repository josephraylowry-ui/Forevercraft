
execute if entity @s[predicate=evercraft:treasure/runes/enchantables] run function evercraft:treasure/runes/mysterichant/enchant

execute if entity @s[predicate=!evercraft:treasure/runes/enchantables] run function evercraft:treasure/runes/mysterichant/invalid

advancement revoke @s only evercraft:treasure/runes/mysterichant_rune