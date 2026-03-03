# Inscription Stone — Per-marker tick (runs as marker, at marker)
# OPT: Consolidates 10 @e scans into 1 per-marker function call

# Apply type-specific effects (tag-gated — only the matching branch runs)
execute if entity @s[tag=ec.inscr_frostbite] run function evercraft:inscription/effects/frostbite
execute if entity @s[tag=ec.inscr_life_steal] run function evercraft:inscription/effects/life_steal
execute if entity @s[tag=ec.inscr_gold_greed] run function evercraft:inscription/effects/gold_greed
execute if entity @s[tag=ec.inscr_absorption] run function evercraft:inscription/effects/absorption
execute if entity @s[tag=ec.inscr_guardian] run function evercraft:inscription/effects/guardian
execute if entity @s[tag=ec.inscr_thornmail] run function evercraft:inscription/effects/thornmail
execute if entity @s[tag=ec.inscr_force] run function evercraft:inscription/effects/force
execute if entity @s[tag=ec.inscr_growth] run function evercraft:inscription/effects/growth

# === Runeforge Resonance — bonus when 2+ same-type stones within 24 blocks ===
# Clean up resonance attribute modifiers (removed each tick, re-added only if resonating)
execute if entity @s[tag=ec.inscr_guardian] as @a[distance=..16] run attribute @s armor modifier remove evercraft:inscr_guardian_res
execute if entity @s[tag=ec.inscr_force] as @a[distance=..16] run attribute @s attack_damage modifier remove evercraft:inscr_force_res

# Frostbite resonance: add Mining Fatigue
execute if entity @s[tag=ec.inscr_frostbite] if entity @e[type=marker,tag=ec.inscr_frostbite,distance=1..24,limit=1] run effect give @e[type=#evercraft:hostile_mobs,distance=..16] mining_fatigue 7 0 true
# Absorption resonance: upgrade to Absorption II
execute if entity @s[tag=ec.inscr_absorption] if entity @e[type=marker,tag=ec.inscr_absorption,distance=1..24,limit=1] run effect give @a[distance=..12] absorption 7 1 true
# Guardian resonance: +2 more armor (total +4)
execute if entity @s[tag=ec.inscr_guardian] if entity @e[type=marker,tag=ec.inscr_guardian,distance=1..24,limit=1] as @a[distance=..12] run attribute @s armor modifier add evercraft:inscr_guardian_res 2 add_value
# Force resonance: +10% more attack (total +20%)
execute if entity @s[tag=ec.inscr_force] if entity @e[type=marker,tag=ec.inscr_force,distance=1..24,limit=1] as @a[distance=..12] run attribute @s attack_damage modifier add evercraft:inscr_force_res 0.1 add_multiplied_base
# Growth resonance: advance earlier crop stages (ages 0→1, 1→2)
execute if entity @s[tag=ec.inscr_growth] if entity @e[type=marker,tag=ec.inscr_growth,distance=1..24,limit=1] positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 wheat[age=2] replace wheat[age=1]
execute if entity @s[tag=ec.inscr_growth] if entity @e[type=marker,tag=ec.inscr_growth,distance=1..24,limit=1] positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 carrots[age=2] replace carrots[age=1]
execute if entity @s[tag=ec.inscr_growth] if entity @e[type=marker,tag=ec.inscr_growth,distance=1..24,limit=1] positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 potatoes[age=2] replace potatoes[age=1]
# Resonance particle (soul_fire_flame when resonating, near players only)
execute if entity @s[tag=ec.inscr_frostbite] if entity @e[type=marker,tag=ec.inscr_frostbite,distance=1..24,limit=1] if entity @a[distance=..32] run particle soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 2
execute if entity @s[tag=ec.inscr_absorption] if entity @e[type=marker,tag=ec.inscr_absorption,distance=1..24,limit=1] if entity @a[distance=..32] run particle soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 2
execute if entity @s[tag=ec.inscr_guardian] if entity @e[type=marker,tag=ec.inscr_guardian,distance=1..24,limit=1] if entity @a[distance=..32] run particle soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 2
execute if entity @s[tag=ec.inscr_force] if entity @e[type=marker,tag=ec.inscr_force,distance=1..24,limit=1] if entity @a[distance=..32] run particle soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 2
execute if entity @s[tag=ec.inscr_growth] if entity @e[type=marker,tag=ec.inscr_growth,distance=1..24,limit=1] if entity @a[distance=..32] run particle soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 2

# Particles (only near players)
execute if entity @a[distance=..32] run function evercraft:inscription/particles

# Block-removed check (stone broken?)
execute unless block ~ ~-0.5 ~ polished_deepslate run function evercraft:inscription/on_break
