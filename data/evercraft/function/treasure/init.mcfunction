# Player Database
scoreboard objectives add mt.main dummy
scoreboard objectives add mt.uuid.0 dummy
scoreboard objectives add mt.uuid.1 dummy
scoreboard objectives add mt.uuid.2 dummy
scoreboard objectives add mt.uuid.3 dummy
scoreboard objectives add num dummy
scoreboard players set 256 num 256
data modify storage evercraft:treasure/main hex_chars set value ["00","01","02","03","04","05","06","07","08","09","0a","0b","0c","0d","0e","0f","10","11","12","13","14","15","16","17","18","19","1a","1b","1c","1d","1e","1f","20","21","22","23","24","25","26","27","28","29","2a","2b","2c","2d","2e","2f","30","31","32","33","34","35","36","37","38","39","3a","3b","3c","3d","3e","3f","40","41","42","43","44","45","46","47","48","49","4a","4b","4c","4d","4e","4f","50","51","52","53","54","55","56","57","58","59","5a","5b","5c","5d","5e","5f","60","61","62","63","64","65","66","67","68","69","6a","6b","6c","6d","6e","6f","70","71","72","73","74","75","76","77","78","79","7a","7b","7c","7d","7e","7f","80","81","82","83","84","85","86","87","88","89","8a","8b","8c","8d","8e","8f","90","91","92","93","94","95","96","97","98","99","9a","9b","9c","9d","9e","9f","a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","aa","ab","ac","ad","ae","af","b0","b1","b2","b3","b4","b5","b6","b7","b8","b9","ba","bb","bc","bd","be","bf","c0","c1","c2","c3","c4","c5","c6","c7","c8","c9","ca","cb","cc","cd","ce","cf","d0","d1","d2","d3","d4","d5","d6","d7","d8","d9","da","db","dc","dd","de","df","e0","e1","e2","e3","e4","e5","e6","e7","e8","e9","ea","eb","ec","ed","ee","ef","f0","f1","f2","f3","f4","f5","f6","f7","f8","f9","fa","fb","fc","fd","fe","ff"]
scoreboard objectives add mt.log_out minecraft.custom:minecraft.leave_game

# Treasure Particles
scoreboard objectives add mt.plot dummy
scoreboard objectives add mt.self_kill dummy
scoreboard objectives add mt.gust dummy

# Needed for shootfacing
execute in overworld positioned 0 0 0 run forceload add 0 0 0 0 

# Treasure System
scoreboard objectives add mt.break_stone minecraft.mined:minecraft.stone
scoreboard objectives add mt.break_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add mt.break_andesite minecraft.mined:minecraft.andesite
scoreboard objectives add mt.break_granite minecraft.mined:minecraft.granite
scoreboard objectives add mt.break_iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add mt.break_diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add mt.break_coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add mt.break_redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add mt.break_emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add mt.break_lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add mt.break_gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add mt.break_deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add mt.break_copper_ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add mt.break_amethyst minecraft.mined:minecraft.amethyst_block
scoreboard objectives add mt.break_calcite minecraft.mined:minecraft.calcite
scoreboard objectives add mt.break_d_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add mt.break_d_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add mt.break_d_gold_ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add mt.break_d_copper_ore minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add mt.break_d_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add mt.break_d_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add mt.break_d_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add mt.break_d_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add mt.break_tuff minecraft.mined:minecraft.tuff
scoreboard objectives add mt.break_dripstone minecraft.mined:minecraft.dripstone_block
scoreboard objectives add mt.break_sandstone minecraft.mined:minecraft.sandstone
scoreboard objectives add mt.break_terracotta minecraft.mined:minecraft.terracotta
scoreboard objectives add mt.break_brown_terracotta minecraft.mined:minecraft.brown_terracotta
scoreboard objectives add mt.break_light_gray_terracotta minecraft.mined:minecraft.light_gray_terracotta
scoreboard objectives add mt.break_orange_terracotta minecraft.mined:minecraft.orange_terracotta
scoreboard objectives add mt.break_red_terracotta minecraft.mined:minecraft.red_terracotta
scoreboard objectives add mt.break_white_terracotta minecraft.mined:minecraft.white_terracotta
scoreboard objectives add mt.break_yellow_terracotta minecraft.mined:minecraft.yellow_terracotta
scoreboard objectives add mt.break_blackstone minecraft.mined:minecraft.blackstone
scoreboard objectives add mt.break_netherrack minecraft.mined:minecraft.netherrack
scoreboard objectives add mt.break_magma_block minecraft.mined:minecraft.magma_block
scoreboard objectives add mt.break_basalt minecraft.mined:minecraft.basalt
scoreboard objectives add mt.break_smooth_basalt minecraft.mined:minecraft.smooth_basalt
scoreboard objectives add mt.break_nether_gold_ore minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add mt.break_nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add mt.break_end_stone minecraft.mined:minecraft.end_stone

scoreboard objectives add mt.common_count dummy
scoreboard objectives add mt.uncommon_count dummy
scoreboard objectives add mt.rare_count dummy
scoreboard objectives add mt.epic_count dummy
scoreboard objectives add mt.mythical_count dummy
scoreboard objectives add mt.check_time dummy
scoreboard objectives add mt.mine_cd minecraft.custom:minecraft.play_time
scoreboard objectives add mt.var dummy
scoreboard objectives add mt.common_chance dummy
scoreboard objectives add mt.uncommon_chance dummy
scoreboard objectives add mt.rare_chance dummy
scoreboard objectives add mt.epic_chance dummy
scoreboard objectives add mt.exquisite_chance dummy
scoreboard objectives add mt.mythical_chance dummy

# Enchantment Bonus (Fortune/Silk Touch)
scoreboard objectives add mt.enchant_bonus dummy
scoreboard objectives add mt.bonus_common dummy
scoreboard objectives add mt.bonus_rare dummy
scoreboard objectives add mt.bonus_epic dummy
scoreboard objectives add mt.bonus_mythical dummy
scoreboard objectives add mt.orig_common dummy
scoreboard objectives add mt.orig_rare dummy
scoreboard objectives add mt.orig_epic dummy
scoreboard objectives add mt.orig_mythical dummy

# Weapons
scoreboard objectives add mt.toxic_machette minecraft.custom:minecraft.play_time
scoreboard objectives add mt.piglin_jealousy minecraft.custom:minecraft.play_time
scoreboard objectives add mt.charged_shard minecraft.custom:minecraft.play_time
scoreboard objectives add mt.laser_scope minecraft.custom:minecraft.play_time

scoreboard objectives add mt.bow_shot minecraft.used:minecraft.bow
scoreboard objectives add mt.ice_shoes_timer dummy
scoreboard objectives add mt.rift_timer dummy
scoreboard objectives add mt.sand_timer dummy
scoreboard objectives add mt.ice_timer dummy
scoreboard objectives add mt.veil_timer dummy
scoreboard objectives add mt.veil dummy
scoreboard objectives add mt.use_trident minecraft.used:minecraft.trident
scoreboard objectives add mt.trident dummy
scoreboard objectives add mt.hold_trident dummy
scoreboard objectives add mt.wet dummy
scoreboard objectives add mt.ray_line dummy
scoreboard objectives add mt.death deathCount

# Runes
scoreboard objectives add mt.use_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add mt.end_rune dummy
scoreboard objectives add mt.sponge_rune dummy
scoreboard objectives add mt.ice_rune dummy
scoreboard objectives add mt.assa_rune dummy
scoreboard objectives add mt.jungle_rune dummy
scoreboard objectives add mt.black_rune dummy
scoreboard objectives add mt.absorb_steal dummy
 
# Misc
scoreboard objectives add mt.play_time minecraft.custom:minecraft.play_time
scoreboard objectives add mt.drill_stone minecraft.mined:minecraft.stone
scoreboard objectives add mt.drill_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add mt.drill_andesite minecraft.mined:minecraft.andesite
scoreboard objectives add mt.drill_granite minecraft.mined:minecraft.granite
scoreboard objectives add mt.compare dummy

# Mechanics
scoreboard objectives add mt.small dummy
scoreboard objectives add mt.hit_cooldown minecraft.custom:minecraft.play_time
scoreboard objectives add mt.small_hit minecraft.custom:minecraft.play_time
scoreboard objectives add mt.big dummy
scoreboard objectives add mt.reach dummy
scoreboard objectives add mt.step_height dummy
scoreboard objectives add mt.light dummy

# Lag Reduction
scoreboard objectives add mt.tick dummy
scoreboard objectives add mt.entity dummy

# Armor
scoreboard objectives add mt.crimson_chestplate minecraft.custom:minecraft.play_time
scoreboard objectives add mt.walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add mt.sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add mt.jump minecraft.custom:minecraft.jump
scoreboard objectives add mt.food food
scoreboard objectives add mt.health health
# entity_hit
scoreboard objectives add mt.id dummy
scoreboard objectives add mt.bit0 dummy
scoreboard objectives add mt.bit1 dummy
scoreboard objectives add mt.bit2 dummy
scoreboard objectives add mt.bit3 dummy
scoreboard objectives add mt.bit4 dummy
scoreboard objectives add mt.bit5 dummy
scoreboard objectives add mt.bit6 dummy
scoreboard objectives add mt.bit7 dummy
scoreboard objectives add mt.bit8 dummy
scoreboard objectives add mt.bit9 dummy
scoreboard objectives add mt.bit10 dummy
scoreboard objectives add mt.bit11 dummy
scoreboard objectives add mt.bit12 dummy
scoreboard objectives add mt.bit13 dummy
scoreboard objectives add mt.bit14 dummy
scoreboard objectives add mt.bit15 dummy
scoreboard objectives add mt.const dummy
scoreboard players set 2 mt.const 2
scoreboard players set -1 mt.const -1

# Technical
team add mt.necromancy
team add mt.hit

# Treasure Container Timers (scoreboard-based replacement for enchantments)
scoreboard objectives add mt.container_timer dummy
scoreboard objectives add mt.container_refill dummy
scoreboard objectives add mt.container_lifetime dummy

scoreboard objectives add mt.luck dummy
scoreboard objectives add mt.luck_bonus dummy
scoreboard objectives add mt.charm_timer dummy
scoreboard objectives add mt.total dummy

# Settings
scoreboard objectives add mt.constant dummy
scoreboard players set #1200 mt.const 1200
scoreboard players set #16 mt.constant 16
scoreboard players set #4 mt.const 4
scoreboard players set #5 mt.const 5
scoreboard players set #2 mt.const 2
scoreboard players set #2 mt.constant 2
scoreboard players set #25 mt.constant 25

# IMPORTANT
execute store result score #load1 mt.var run scoreboard players get #load1 mt.var

scoreboard players set #page mt.constant 0

data modify storage evercraft:treasure/container loot_table set value 'none'

execute store result score #disable_build mt.constant run scoreboard players get #disable_build mt.constant
execute store result score #disable_giga_drill mt.constant run scoreboard players get #disable_giga_drill mt.constant
execute store result score #disable_global mt.constant run scoreboard players get #disable_global mt.constant
execute store result score #disable_common mt.constant run scoreboard players get #disable_common mt.constant
execute store result score #disable_uncommon mt.constant run scoreboard players get #disable_uncommon mt.constant
execute store result score #disable_rare mt.constant run scoreboard players get #disable_rare mt.constant
execute store result score #disable_epic mt.constant run scoreboard players get #disable_epic mt.constant
execute store result score #disable_ornate mt.constant run scoreboard players get #disable_ornate mt.constant
execute store result score #disable_exquisite mt.constant run scoreboard players get #disable_exquisite mt.constant
execute store result score #disable_mythical mt.constant run scoreboard players get #disable_mythical mt.constant
execute store result score #loot_table_rolls mt.constant run scoreboard players get #loot_table_rolls mt.constant
execute store result score #frequency mt.constant run scoreboard players get #frequency mt.constant
execute store result score #chance_common mt.var run scoreboard players get #chance_common mt.var
execute store result score #chance_uncommon mt.var run scoreboard players get #chance_uncommon mt.var
execute store result score #chance_rare mt.var run scoreboard players get #chance_rare mt.var
execute store result score #chance_epic mt.var run scoreboard players get #chance_epic mt.var
execute store result score #chance_exquisite mt.var run scoreboard players get #chance_exquisite mt.var
execute store result score #chance_mythical mt.var run scoreboard players get #chance_mythical mt.var
execute store result score #despawn_speed mt.constant run scoreboard players get #despawn_speed mt.constant
execute store result score #progression mt.constant run scoreboard players get #progression mt.constant
execute store result score #disable_animation mt.constant run scoreboard players get #disable_animation mt.constant
execute store result score #disable_deto_mine mt.constant run scoreboard players get #disable_deto_mine mt.constant
execute store result score #disable_rune mt.constant run scoreboard players get #disable_rune mt.constant
execute store result score #disable_indestructible mt.constant run scoreboard players get #disable_indestructible mt.constant
execute store result score #disable_silk_touch mt.constant run scoreboard players get #disable_silk_touch mt.constant

# Safety net: if chance values are 0 (lost on reload), reapply standard frequency
execute if score #chance_common mt.var matches 0 run function evercraft:treasure/settings/frequency/standard

# Safety net: ensure despawn_speed storage is always initialized
execute unless data storage evercraft:treasure/settings despawn_speed run function evercraft:treasure/settings/despawn/standard

execute if score #load1 mt.var matches 0 unless score #load1 mt.var matches 1.. run function evercraft:treasure/loaded