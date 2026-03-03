# Rogue Tier 3 (Rare) — 4 damage, 1 target + per-dagger bonuses
# Daggers: Fang of Frost (freeze), Heartstealer (precision strike)
# Run as player, anchored eyes, ec.rg_swinger tag set

# === CONE TARGETING: 1.5b forward, 2b sphere, 1 target ===
# Default damage (4) — Heartstealer may override with bonus
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=1,sort=nearest] run damage @s 4 minecraft:player_attack by @a[tag=ec.rg_swinger,limit=1]

# === VISUAL EFFECTS ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=1,sort=nearest] at @s run function evercraft:artifacts/rogue/effects

# === PER-DAGGER BONUSES ===
# Fang of Frost — Freeze: Slowness III for 2s on hit target
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"glacial_edge"}] positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=1,sort=nearest] run effect give @s slowness 2 2
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"glacial_edge"}] positioned ^ ^ ^1.5 run particle snowflake ~ ~1 ~ 0.3 0.3 0.3 0.02 5

# Heartstealer — Precision Strike: 25% chance for bonus 4 damage (doubles the hit)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"heartstealer"}] run function evercraft:artifacts/rogue/bonus/precision

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.7 1.3
