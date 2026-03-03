scoreboard players add @s mt.common_count 1

# Achievement tracking
scoreboard players add @s ach.crates_mining 1
scoreboard players add @s ach.crates_opened 1

# Anecdote: Miner's (once per player)
execute unless score @s ec.anec_miner matches 1 run function evercraft:anecdotes/give_miners

scoreboard players set @s mt.total 0

scoreboard players operation @s mt.total += @s mt.break_stone
scoreboard players operation @s mt.total += @s mt.break_diorite
scoreboard players operation @s mt.total += @s mt.break_andesite
scoreboard players operation @s mt.total += @s mt.break_granite
scoreboard players operation @s mt.total += @s mt.break_iron_ore
scoreboard players operation @s mt.total += @s mt.break_diamond_ore
scoreboard players operation @s mt.total += @s mt.break_coal_ore
scoreboard players operation @s mt.total += @s mt.break_redstone_ore
scoreboard players operation @s mt.total += @s mt.break_emerald_ore
scoreboard players operation @s mt.total += @s mt.break_lapis_ore
scoreboard players operation @s mt.total += @s mt.break_gold_ore
scoreboard players operation @s mt.total += @s mt.break_deepslate
scoreboard players operation @s mt.total += @s mt.break_copper_ore
scoreboard players operation @s mt.total += @s mt.break_amethyst
scoreboard players operation @s mt.total += @s mt.break_calcite
scoreboard players operation @s mt.total += @s mt.break_d_coal_ore
scoreboard players operation @s mt.total += @s mt.break_d_iron_ore
scoreboard players operation @s mt.total += @s mt.break_d_gold_ore
scoreboard players operation @s mt.total += @s mt.break_d_copper_ore
scoreboard players operation @s mt.total += @s mt.break_d_redstone_ore
scoreboard players operation @s mt.total += @s mt.break_d_lapis_ore
scoreboard players operation @s mt.total += @s mt.break_d_emerald_ore
scoreboard players operation @s mt.total += @s mt.break_d_diamond_ore
scoreboard players operation @s mt.total += @s mt.break_tuff
scoreboard players operation @s mt.total += @s mt.break_dripstone
scoreboard players operation @s mt.total += @s mt.break_sandstone
scoreboard players operation @s mt.total += @s mt.break_terracotta
scoreboard players operation @s mt.total += @s mt.break_brown_terracotta
scoreboard players operation @s mt.total += @s mt.break_light_gray_terracotta
scoreboard players operation @s mt.total += @s mt.break_orange_terracotta
scoreboard players operation @s mt.total += @s mt.break_red_terracotta
scoreboard players operation @s mt.total += @s mt.break_white_terracotta
scoreboard players operation @s mt.total += @s mt.break_yellow_terracotta
scoreboard players operation @s mt.total += @s mt.break_blackstone
scoreboard players operation @s mt.total += @s mt.break_netherrack
scoreboard players operation @s mt.total += @s mt.break_magma_block
scoreboard players operation @s mt.total += @s mt.break_basalt
scoreboard players operation @s mt.total += @s mt.break_smooth_basalt
scoreboard players operation @s mt.total += @s mt.break_nether_gold_ore
scoreboard players operation @s mt.total += @s mt.break_nether_quartz_ore
scoreboard players operation @s mt.total += @s mt.break_end_stone

recipe give @s evercraft:treasure/advancement

scoreboard players operation @s mt.total += #progression mt.var
