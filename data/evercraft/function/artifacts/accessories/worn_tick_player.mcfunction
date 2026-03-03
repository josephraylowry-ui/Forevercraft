# Worn Artifact Abilities — Per-player check
# Run as @s (player) at @s
# OPT: Extracted from worn_tick to avoid 17 @a selector evaluations

# OPT: Early exit if no armor slot has custom_data (no artifact armor worn)
# 4 quick checks vs 20+ specific artifact checks for players in vanilla gear
execute unless items entity @s armor.head *[custom_data~{}] unless items entity @s armor.chest *[custom_data~{}] unless items entity @s armor.legs *[custom_data~{}] unless items entity @s armor.feet *[custom_data~{}] run return 0

# Shadowstep Boots — Invisibility while sneaking
execute if predicate evercraft:is_sneaking if items entity @s armor.feet *[custom_data~{ability:"shadow_walk"}] run effect give @s invisibility 3 0 false
execute if predicate evercraft:is_sneaking if items entity @s armor.feet *[custom_data~{ability:"shadow_walk"}] run particle smoke ~ ~0.1 ~ 0.2 0 0.2 0.01 2

# Warden Helm — Night Vision when worn
execute if items entity @s armor.head *[custom_data~{ability:"warden_affinity"}] run effect give @s night_vision 15 0 false

# Dark Helmet (Helm of Shadows) — Night Vision passive + Invisibility while sneaking
execute if items entity @s armor.head *[custom_data~{ability:"shadow_veil"}] run effect give @s night_vision 15 0 false
execute if predicate evercraft:is_sneaking if items entity @s armor.head *[custom_data~{ability:"shadow_veil"}] run effect give @s invisibility 3 0 false
execute if predicate evercraft:is_sneaking if items entity @s armor.head *[custom_data~{ability:"shadow_veil"}] run particle smoke ~ ~1.5 ~ 0.3 0.3 0.3 0.01 2

# Phoenix Helm/Plate — Absorption I (rebirth buffer)
execute if items entity @s armor.head *[custom_data~{ability:"rebirth"}] run effect give @s absorption 5 0 false
execute if items entity @s armor.chest *[custom_data~{ability:"rebirth"}] run effect give @s absorption 5 1 false

# Cloudstep Boots — Jump Boost III (pseudo double jump)
execute if items entity @s armor.feet *[custom_data~{ability:"double_jump"}] run effect give @s jump_boost 5 2 false

# Elderguard Legs — Thorns aura (damage nearby attackers) + Dolphin's Grace in water
execute if items entity @s armor.legs *[custom_data~{ability:"damage_reflect"}] as @e[type=#evercraft:hostile_mobs,distance=..2,nbt={hurt_time:0s}] run damage @s 1 minecraft:thorns
execute if predicate evercraft:in_water if items entity @s armor.legs *[custom_data~{ability:"damage_reflect"}] run effect give @s dolphins_grace 5 0 false

# ============================================
# JOURNEY SET — Per-piece Mining Abilities
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"journey_helmet"}] run effect give @s night_vision 15 0 false
execute if items entity @s armor.chest *[custom_data~{artifact:"journey_chestplate"}] run effect give @s resistance 5 0 false
execute if items entity @s armor.legs *[custom_data~{artifact:"journey_leggings"}] run effect give @s haste 5 0 false
execute if items entity @s armor.feet *[custom_data~{artifact:"journey_boots"}] run effect give @s slow_falling 5 0 false

# ============================================
# SPELUNKER SET — Per-piece Explorer Abilities
# ============================================
execute if items entity @s armor.head *[custom_data~{artifact:"spelunker_helmet"}] run effect give @s night_vision 15 0 false
execute if items entity @s armor.chest *[custom_data~{artifact:"spelunker_chestplate"}] run effect give @s resistance 5 0 false
execute if items entity @s armor.legs *[custom_data~{artifact:"spelunker_leggings"}] run effect give @s speed 5 0 false
execute if items entity @s armor.feet *[custom_data~{artifact:"spelunker_boots"}] run effect give @s jump_boost 5 0 false
