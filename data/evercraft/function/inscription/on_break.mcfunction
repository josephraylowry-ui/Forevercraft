# ============================================================
# Inscription Stones — On Break
# Run as the marker entity when its polished_deepslate block is gone
# Drops the inscribed stone item, decrements owner's count, kills marker
# ============================================================

# Visual/audio feedback
particle minecraft:smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.02 15
playsound minecraft:block.deepslate.break master @a[distance=..16] ~ ~ ~ 0.8 0.8
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 0.3 0.5

# Drop the correct inscribed stone item based on tag
execute if entity @s[tag=ec.inscr_frostbite] run loot spawn ~ ~ ~ loot evercraft:inscription/stones/frostbite
execute if entity @s[tag=ec.inscr_life_steal] run loot spawn ~ ~ ~ loot evercraft:inscription/stones/life_steal
execute if entity @s[tag=ec.inscr_gold_greed] run loot spawn ~ ~ ~ loot evercraft:inscription/stones/gold_greed
execute if entity @s[tag=ec.inscr_absorption] run loot spawn ~ ~ ~ loot evercraft:inscription/stones/absorption
execute if entity @s[tag=ec.inscr_guardian] run loot spawn ~ ~ ~ loot evercraft:inscription/stones/guardian
execute if entity @s[tag=ec.inscr_thornmail] run loot spawn ~ ~ ~ loot evercraft:inscription/stones/thornmail
execute if entity @s[tag=ec.inscr_force] run loot spawn ~ ~ ~ loot evercraft:inscription/stones/force
execute if entity @s[tag=ec.inscr_growth] run loot spawn ~ ~ ~ loot evercraft:inscription/stones/growth

# Decrement owner's stone count (match by UUID[3] stored on marker)
execute store result score #inscr_owner ec.var run scoreboard players get @s ec.inscr_owner
execute as @a store result score @s ec.temp run data get entity @s UUID[3]
execute as @a if score @s ec.temp = #inscr_owner ec.var run scoreboard players remove @s ec.inscr_count 1
execute as @a if score @s ec.inscr_count matches ..-1 run scoreboard players set @s ec.inscr_count 0

# Clean up attribute modifiers for players who may leave range
# (Gold Greed and Guardian/Force modifiers are refreshed each tick anyway,
#  they'll naturally expire when the stone is gone and no longer applies them)

# Kill the marker
kill @s
