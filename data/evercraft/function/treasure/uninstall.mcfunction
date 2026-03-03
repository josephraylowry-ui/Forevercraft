tellraw @s ["",{text:"UNINSTALLED MINE TREASURE",bold:true,color:"yellow"}]

# Remove all scoreboard objectives
scoreboard objectives remove mt.main
scoreboard objectives remove mt.uuid.0
scoreboard objectives remove mt.uuid.1
scoreboard objectives remove mt.uuid.2
scoreboard objectives remove mt.uuid.3
scoreboard objectives remove num
scoreboard objectives remove mt.log_out
scoreboard objectives remove mt.plot
scoreboard objectives remove mt.self_kill
scoreboard objectives remove mt.common_count
scoreboard objectives remove mt.rare_count
scoreboard objectives remove mt.epic_count
scoreboard objectives remove mt.mythical_count
scoreboard objectives remove mt.check_time
scoreboard objectives remove mt.mine_cd
scoreboard objectives remove mt.var
scoreboard objectives remove mt.common_chance
scoreboard objectives remove mt.rare_chance
scoreboard objectives remove mt.epic_chance
scoreboard objectives remove mt.mythical_chance
scoreboard objectives remove mt.toxic_machette
scoreboard objectives remove mt.piglin_jealousy
scoreboard objectives remove mt.charged_shard
scoreboard objectives remove mt.laser_scope
scoreboard objectives remove mt.bow_shot
scoreboard objectives remove mt.ice_shoes_timer
scoreboard objectives remove mt.rift_timer
scoreboard objectives remove mt.sand_timer
scoreboard objectives remove mt.ice_timer
scoreboard objectives remove mt.veil_timer
scoreboard objectives remove mt.veil
scoreboard objectives remove mt.use_trident
scoreboard objectives remove mt.trident
scoreboard objectives remove mt.hold_trident
scoreboard objectives remove mt.wet
scoreboard objectives remove mt.ray_line
scoreboard objectives remove mt.death
scoreboard objectives remove mt.use_pearl
scoreboard objectives remove mt.end_rune
scoreboard objectives remove mt.sponge_rune
scoreboard objectives remove mt.ice_rune
scoreboard objectives remove mt.assa_rune
scoreboard objectives remove mt.jungle_rune
scoreboard objectives remove mt.black_rune
scoreboard objectives remove mt.absorb_steal
scoreboard objectives remove mt.play_time
scoreboard objectives remove mt.drill_stone
scoreboard objectives remove mt.drill_diorite
scoreboard objectives remove mt.drill_andesite
scoreboard objectives remove mt.drill_granite
scoreboard objectives remove mt.compare
scoreboard objectives remove mt.small
scoreboard objectives remove mt.small_hit
scoreboard objectives remove mt.hit_cooldown
scoreboard objectives remove mt.big
scoreboard objectives remove mt.reach
scoreboard objectives remove mt.step_height
scoreboard objectives remove mt.light
scoreboard objectives remove mt.tick
scoreboard objectives remove mt.entity
scoreboard objectives remove mt.crimson_chestplate
scoreboard objectives remove mt.walking
scoreboard objectives remove mt.sprinting
scoreboard objectives remove mt.jump
scoreboard objectives remove mt.food
scoreboard objectives remove mt.health
scoreboard objectives remove mt.id
scoreboard objectives remove mt.bit0
scoreboard objectives remove mt.bit1
scoreboard objectives remove mt.bit2
scoreboard objectives remove mt.bit3
scoreboard objectives remove mt.bit4
scoreboard objectives remove mt.bit5
scoreboard objectives remove mt.bit6
scoreboard objectives remove mt.bit7
scoreboard objectives remove mt.bit8
scoreboard objectives remove mt.bit9
scoreboard objectives remove mt.bit10
scoreboard objectives remove mt.bit11
scoreboard objectives remove mt.bit12
scoreboard objectives remove mt.bit13
scoreboard objectives remove mt.bit14
scoreboard objectives remove mt.bit15
scoreboard objectives remove mt.const
scoreboard objectives remove mt.luck
scoreboard objectives remove mt.total
scoreboard objectives remove mt.constant

# Remove treasure block mining objectives
scoreboard objectives remove mt.break_stone
scoreboard objectives remove mt.break_diorite
scoreboard objectives remove mt.break_andesite
scoreboard objectives remove mt.break_granite
scoreboard objectives remove mt.break_iron_ore
scoreboard objectives remove mt.break_diamond_ore
scoreboard objectives remove mt.break_coal_ore
scoreboard objectives remove mt.break_redstone_ore
scoreboard objectives remove mt.break_emerald_ore
scoreboard objectives remove mt.break_lapis_ore
scoreboard objectives remove mt.break_gold_ore
scoreboard objectives remove mt.break_deepslate
scoreboard objectives remove mt.break_copper_ore
scoreboard objectives remove mt.break_amethyst
scoreboard objectives remove mt.break_calcite
scoreboard objectives remove mt.break_d_coal_ore
scoreboard objectives remove mt.break_d_iron_ore
scoreboard objectives remove mt.break_d_gold_ore
scoreboard objectives remove mt.break_d_copper_ore
scoreboard objectives remove mt.break_d_redstone_ore
scoreboard objectives remove mt.break_d_lapis_ore
scoreboard objectives remove mt.break_d_emerald_ore
scoreboard objectives remove mt.break_d_diamond_ore
scoreboard objectives remove mt.break_tuff
scoreboard objectives remove mt.break_dripstone
scoreboard objectives remove mt.break_sandstone
scoreboard objectives remove mt.break_terracotta
scoreboard objectives remove mt.break_brown_terracotta
scoreboard objectives remove mt.break_light_gray_terracotta
scoreboard objectives remove mt.break_orange_terracotta 
scoreboard objectives remove mt.break_red_terracotta 
scoreboard objectives remove mt.break_white_terracotta 
scoreboard objectives remove mt.break_yellow_terracotta
scoreboard objectives remove mt.break_blackstone 
scoreboard objectives remove mt.break_netherrack 
scoreboard objectives remove mt.break_magma_block 
scoreboard objectives remove mt.break_basalt
scoreboard objectives remove mt.break_smooth_basalt
scoreboard objectives remove mt.break_nether_gold_ore
scoreboard objectives remove mt.break_nether_quartz_ore
scoreboard objectives remove mt.break_end_stone

# Reset scoreboard values
scoreboard players reset 2 mt.const
scoreboard players reset -1 mt.const
scoreboard players reset #2 mt.constant
scoreboard players reset #4 mt.const
scoreboard players reset #5 mt.const
scoreboard players reset #1200 mt.const
scoreboard players reset #16 mt.constant
scoreboard players reset #page mt.constant
scoreboard players reset #disable_build mt.constant
scoreboard players reset #disable_global mt.constant
scoreboard players reset #disable_common mt.constant
scoreboard players reset #disable_rare mt.constant
scoreboard players reset #disable_epic mt.constant
scoreboard players reset #disable_mythical mt.constant
scoreboard players reset #loot_table_rolls mt.constant
scoreboard players reset #frequency mt.constant
scoreboard players reset #despawn_speed mt.constant
scoreboard players reset #progression mt.constant
scoreboard players reset #disable_animation mt.constant
scoreboard players reset #disable_deto_mine mt.constant
scoreboard players reset #disable_common_charm mt.constant
scoreboard players reset #disable_rare_charm mt.constant
scoreboard players reset #disable_epic_charm mt.constant
scoreboard players reset #disable_mythical_charm mt.constant
scoreboard players reset #disable_rune mt.constant
scoreboard players reset #disable_indestructible mt.constant
scoreboard players reset #disable_silk_touch mt.constant
scoreboard players reset #load mt.var

# Remove teams
team remove mt.necromancy
team remove mt.hit

# Disable datapack
datapack disable "file/mine-treasure-1.6.2.zip"