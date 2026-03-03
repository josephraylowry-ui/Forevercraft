# Rogue Tier 2 (Uncommon) — 3 damage, 1 target + per-dagger bonuses
# Daggers: Hidden Blade (lifesteal), Coral Blade (toxic edge / wither)
# Run as player, anchored eyes, ec.rg_swinger tag set

# === CONE TARGETING: 1.5b forward, 2b sphere, 1 target ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=1,sort=nearest] run damage @s 3 minecraft:player_attack by @a[tag=ec.rg_swinger,limit=1]

# === VISUAL EFFECTS ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=1,sort=nearest] at @s run function evercraft:artifacts/rogue/effects

# === PER-DAGGER BONUSES ===
# Hidden Blade — Lifesteal: heal 1 HP per swing
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"soulreaper"}] run function evercraft:artifacts/rogue/bonus/lifesteal

# Coral Blade — Toxic Edge: Wither I for 2s on hit target
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"coral_blade"}] positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=1,sort=nearest] run effect give @s wither 2 0

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.6 1.4
