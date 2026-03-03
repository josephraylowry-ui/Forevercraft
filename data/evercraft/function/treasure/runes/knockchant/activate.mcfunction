
execute if entity @s[predicate=evercraft:treasure/runes/enchantables] run function evercraft:treasure/runes/knockchant/enchant

execute if entity @s[predicate=!evercraft:treasure/runes/enchantables] run function evercraft:treasure/runes/knockchant/invalid

advancement revoke @s only evercraft:treasure/runes/knockchant_rune