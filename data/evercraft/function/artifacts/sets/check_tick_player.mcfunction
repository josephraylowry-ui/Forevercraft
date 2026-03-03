# Artifact Set Detection + Per-Piece Passives — Per-player
# OPT: Consolidates ~32 @a scans into 1 function call
# Runs as @s = player, at @s

# ============================================
# CHECK ARTIFACT SETS
# ============================================
function evercraft:artifacts/sets/check_sets

# ============================================
# DRAGONMASTER PER-PIECE ABILITIES
# ============================================
# Helmet — Dragon's Sight: Night Vision while worn
execute if items entity @s armor.head *[custom_data~{artifact:"dragonmaster_helmet"}] run effect give @s night_vision 13 0 false

# ============================================
# TITAN PER-PIECE ABILITIES
# ============================================
# Leggings — Tidal Current: Dolphin's Grace while worn
execute if items entity @s armor.legs *[custom_data~{artifact:"titan_leggings"}] run effect give @s dolphins_grace 13 0 false

# ============================================
# VERDANT PER-PIECE ABILITIES
# ============================================
# Helmet — Harvest Sight: Haste I to harvest crops faster
execute if items entity @s armor.head *[custom_data~{artifact:"verdant_helmet"}] unless score @s ec.h_haste matches 2.. run effect give @s haste 3 0 false

# Chestplate — Verdant Heart: Regeneration I while on grass/dirt/farmland
execute if items entity @s armor.chest *[custom_data~{artifact:"verdant_chestplate"}] if block ~ ~-1 ~ #minecraft:dirt unless score @s ec.h_regen matches 2.. run effect give @s regeneration 3 0 false
# Armored Elytra — Verdant Heart still applies (effect, not attribute)
execute if items entity @s armor.chest *[custom_data~{artifact_set:"verdant",armored_elytra:{armored:true}}] if block ~ ~-1 ~ #minecraft:dirt unless score @s ec.h_regen matches 2.. run effect give @s regeneration 3 0 false

# Leggings — Verdant Stride: Speed I while on grass/dirt/farmland
execute if items entity @s armor.legs *[custom_data~{artifact:"verdant_leggings"}] if block ~ ~-1 ~ #minecraft:dirt unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# ANY Verdant Piece — Crop Trample Immunity
execute if score @s ec.verdant matches 1.. run function evercraft:artifacts/sets/verdant/crop_protect

# Full Set (4pc) — Verdant Aura: Double crop growth
execute if entity @s[tag=verdant_4pc] run function evercraft:artifacts/sets/verdant/crop_growth_aura

# ============================================
# INFERNAL PER-PIECE ABILITIES
# ============================================
# Helmet — Hellsight: Fire Resistance while worn
execute if items entity @s armor.head *[custom_data~{artifact:"infernal_helmet"}] run effect give @s fire_resistance 13 0 false

# Leggings — Nether Fury: +2 Attack Damage in Nether (state-gated)
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if dimension minecraft:the_nether unless entity @s[tag=ec.infernal_dmg] run attribute @s attack_damage modifier add evercraft:infernal_nether_dmg 2 add_value
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if dimension minecraft:the_nether unless entity @s[tag=ec.infernal_dmg] run tag @s add ec.infernal_dmg
execute unless items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if entity @s[tag=ec.infernal_dmg] run attribute @s attack_damage modifier remove evercraft:infernal_nether_dmg
execute unless items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] if entity @s[tag=ec.infernal_dmg] run tag @s remove ec.infernal_dmg
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] unless dimension minecraft:the_nether if entity @s[tag=ec.infernal_dmg] run attribute @s attack_damage modifier remove evercraft:infernal_nether_dmg
execute if items entity @s armor.legs *[custom_data~{artifact:"infernal_leggings"}] unless dimension minecraft:the_nether if entity @s[tag=ec.infernal_dmg] run tag @s remove ec.infernal_dmg

# ============================================
# ENDER DRAGON PER-PIECE ABILITIES
# ============================================
# Helmet — Dragon's Sight: Night Vision while worn
execute if items entity @s armor.head *[custom_data~{artifact:"ender_dragon_helmet"}] run effect give @s night_vision 13 0 false

# Leggings — Void Step: Speed I in The End
execute if items entity @s armor.legs *[custom_data~{artifact:"ender_dragon_leggings"}] if dimension minecraft:the_end unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Boots — Dragon's Grace: Slow Falling while worn
execute if items entity @s armor.feet *[custom_data~{artifact:"ender_dragon_boots"}] run effect give @s slow_falling 13 0 false

# ============================================
# WEAPON PASSIVE ABILITIES (HELD IN MAINHAND)
# ============================================
# Golden Gauntlet — Haste I while held
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"golden_gauntlet"}] unless score @s ec.h_haste matches 2.. run effect give @s haste 3 0 false

# Whirlwind — Speed I while held
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"whirlwind"}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false

# Leviathan Axe — Slows nearby enemies
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"leviathan_axe"}] run effect give @e[type=#evercraft:hostile,distance=..5] slowness 3 0 false

# Romeo Sword — Speed II + Strength I while held
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"romeo_sword"}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 1 false
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"romeo_sword"}] unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false

# Romeo Hammer — Resistance II while held
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"romeo_hammer"}] unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 1 false

# ============================================
# ORNATE ARTIFACT PASSIVE ABILITIES
# ============================================
# Windwalker Boots — Speed I while worn (gated by harmonization)
execute if items entity @s armor.feet *[custom_data~{artifact:"windwalker_boots"}] unless score @s ec.h_speed matches 2.. run effect give @s speed 13 0 false

# Titan's Plate — +4 Max Health while worn (state-gated)
execute if items entity @s armor.chest *[custom_data~{artifact:"titans_plate"}] unless entity @s[tag=ec.titans_plate] run attribute @s max_health modifier add evercraft:titans_plate_health 4 add_value
execute if items entity @s armor.chest *[custom_data~{artifact:"titans_plate"}] unless entity @s[tag=ec.titans_plate] run tag @s add ec.titans_plate
execute unless items entity @s armor.chest *[custom_data~{artifact:"titans_plate"}] if entity @s[tag=ec.titans_plate] run attribute @s max_health modifier remove evercraft:titans_plate_health
execute unless items entity @s armor.chest *[custom_data~{artifact:"titans_plate"}] if entity @s[tag=ec.titans_plate] run tag @s remove ec.titans_plate

# Warrior's Crown — +2 Attack Damage while worn (state-gated)
execute if items entity @s armor.head *[custom_data~{artifact:"warriors_crown"}] unless entity @s[tag=ec.warriors_crown] run attribute @s attack_damage modifier add evercraft:warriors_crown_damage 2 add_value
execute if items entity @s armor.head *[custom_data~{artifact:"warriors_crown"}] unless entity @s[tag=ec.warriors_crown] run tag @s add ec.warriors_crown
execute unless items entity @s armor.head *[custom_data~{artifact:"warriors_crown"}] if entity @s[tag=ec.warriors_crown] run attribute @s attack_damage modifier remove evercraft:warriors_crown_damage
execute unless items entity @s armor.head *[custom_data~{artifact:"warriors_crown"}] if entity @s[tag=ec.warriors_crown] run tag @s remove ec.warriors_crown

# Leggings of Fortitude — 50% Knockback Resistance while worn (state-gated)
execute if items entity @s armor.legs *[custom_data~{artifact:"leggings_of_fortitude"}] unless entity @s[tag=ec.fortitude] run attribute @s knockback_resistance modifier add evercraft:fortitude_kb_resist 0.5 add_value
execute if items entity @s armor.legs *[custom_data~{artifact:"leggings_of_fortitude"}] unless entity @s[tag=ec.fortitude] run tag @s add ec.fortitude
execute unless items entity @s armor.legs *[custom_data~{artifact:"leggings_of_fortitude"}] if entity @s[tag=ec.fortitude] run attribute @s knockback_resistance modifier remove evercraft:fortitude_kb_resist
execute unless items entity @s armor.legs *[custom_data~{artifact:"leggings_of_fortitude"}] if entity @s[tag=ec.fortitude] run tag @s remove ec.fortitude

# Berserker's Fang — Strength I + Speed I while held, nearby hostiles weakened (gated by harmonization)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"berserkers_fang"}] unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"berserkers_fang"}] unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"berserkers_fang"}] run effect give @e[type=#evercraft:hostile,distance=..3] weakness 3 0 false

# Spelunker locate trigger enable (moved from per-tick, OPT Session 76)
execute if entity @s[tag=spelunker_4pc] run scoreboard players enable @s ec.locate

# Spelunker compass cooldown decrement (OPT-2: moved from per-tick, 20 ticks per 1s)
execute if score @s ec.compass_cooldown matches 1.. run scoreboard players remove @s ec.compass_cooldown 20
