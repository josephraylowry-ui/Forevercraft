# Dungeon Instance — Apply Difficulty + DR Scaling
# Runs after each wave spawn. Scales unscaled mobs (dg.mob without dg.scaled)
# Two independent layers that stack via separate attribute modifiers:
#   1. Difficulty tier (0-3, player-selected) → dg_scaling
#   2. Dream Rate tier (from #dg_dr) → dg_dr_* modifiers
# Total = base × (1 + difficulty_mult + dr_mult)

# ========================================
# LAYER 1: Difficulty Tier (HP + DMG)
# ========================================

# Difficulty 0 (Easy): no modifiers

# Difficulty 1 (Normal): +25% HP, +15% DMG
execute if score #dg_difficulty ec.var matches 1 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add dg_scaling 0.25 add_multiplied_base
execute if score #dg_difficulty ec.var matches 1 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add dg_scaling 0.15 add_multiplied_base

# Difficulty 2 (Hard): +50% HP, +30% DMG
execute if score #dg_difficulty ec.var matches 2 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add dg_scaling 0.50 add_multiplied_base
execute if score #dg_difficulty ec.var matches 2 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add dg_scaling 0.30 add_multiplied_base

# Difficulty 3 (Brutal): +100% HP, +50% DMG
execute if score #dg_difficulty ec.var matches 3 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add dg_scaling 1.00 add_multiplied_base
execute if score #dg_difficulty ec.var matches 3 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add dg_scaling 0.50 add_multiplied_base

# ========================================
# LAYER 2: Dream Rate Scaling (HP + DMG + Speed + Armor)
# ========================================

# DR 0-4: no DR modifiers

# DR 5-9: +40% HP, +20% DMG, +5% Speed, +2 Armor
execute if score #dg_dr ec.var matches 5..9 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add dg_dr_hp 0.40 add_multiplied_base
execute if score #dg_dr ec.var matches 5..9 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add dg_dr_dmg 0.20 add_multiplied_base
execute if score #dg_dr ec.var matches 5..9 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:movement_speed modifier add dg_dr_spd 0.05 add_multiplied_base
execute if score #dg_dr ec.var matches 5..9 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:armor modifier add dg_dr_arm 2.0 add_value

# DR 10-14: +100% HP, +50% DMG, +10% Speed, +4 Armor
execute if score #dg_dr ec.var matches 10..14 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add dg_dr_hp 1.00 add_multiplied_base
execute if score #dg_dr ec.var matches 10..14 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add dg_dr_dmg 0.50 add_multiplied_base
execute if score #dg_dr ec.var matches 10..14 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:movement_speed modifier add dg_dr_spd 0.10 add_multiplied_base
execute if score #dg_dr ec.var matches 10..14 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:armor modifier add dg_dr_arm 4.0 add_value

# DR 15-19: +200% HP, +100% DMG, +15% Speed, +8 Armor
execute if score #dg_dr ec.var matches 15..19 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add dg_dr_hp 2.00 add_multiplied_base
execute if score #dg_dr ec.var matches 15..19 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add dg_dr_dmg 1.00 add_multiplied_base
execute if score #dg_dr ec.var matches 15..19 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:movement_speed modifier add dg_dr_spd 0.15 add_multiplied_base
execute if score #dg_dr ec.var matches 15..19 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:armor modifier add dg_dr_arm 8.0 add_value

# DR 20-24: +325% HP, +150% DMG, +20% Speed, +12 Armor
execute if score #dg_dr ec.var matches 20..24 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add dg_dr_hp 3.25 add_multiplied_base
execute if score #dg_dr ec.var matches 20..24 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add dg_dr_dmg 1.50 add_multiplied_base
execute if score #dg_dr ec.var matches 20..24 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:movement_speed modifier add dg_dr_spd 0.20 add_multiplied_base
execute if score #dg_dr ec.var matches 20..24 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:armor modifier add dg_dr_arm 12.0 add_value

# DR 25-29: +500% HP, +225% DMG, +25% Speed, +16 Armor
execute if score #dg_dr ec.var matches 25..29 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add dg_dr_hp 5.00 add_multiplied_base
execute if score #dg_dr ec.var matches 25..29 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add dg_dr_dmg 2.25 add_multiplied_base
execute if score #dg_dr ec.var matches 25..29 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:movement_speed modifier add dg_dr_spd 0.25 add_multiplied_base
execute if score #dg_dr ec.var matches 25..29 as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:armor modifier add dg_dr_arm 16.0 add_value

# DR 30+: +750% HP, +300% DMG, +30% Speed, +20 Armor
execute if score #dg_dr ec.var matches 30.. as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:max_health modifier add dg_dr_hp 7.50 add_multiplied_base
execute if score #dg_dr ec.var matches 30.. as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:attack_damage modifier add dg_dr_dmg 3.00 add_multiplied_base
execute if score #dg_dr ec.var matches 30.. as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:movement_speed modifier add dg_dr_spd 0.30 add_multiplied_base
execute if score #dg_dr ec.var matches 30.. as @e[tag=dg.mob,tag=!dg.scaled] run attribute @s minecraft:armor modifier add dg_dr_arm 20.0 add_value

# ========================================
# FINALIZE: Health reset + tag + modifiers
# ========================================

# Reset health to max after all modifiers (only if any scaling was applied)
execute if score #dg_difficulty ec.var matches 1.. as @e[tag=dg.mob,tag=!dg.scaled] run data modify entity @s Health set value 9999f
execute if score #dg_difficulty ec.var matches 0 if score #dg_dr ec.var matches 5.. as @e[tag=dg.mob,tag=!dg.scaled] run data modify entity @s Health set value 9999f

# Tag all unscaled mobs to prevent double-application on future waves
tag @e[tag=dg.mob,tag=!dg.scaled] add dg.scaled

# Apply dungeon modifier effects (Relentless, Fortified, etc.)
execute if score #dg_modifier ec.var matches 1.. run function evercraft:dungeon/modifiers/apply_to_mobs
