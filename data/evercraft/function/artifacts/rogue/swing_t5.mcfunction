# Rogue Tier 5 (Exquisite) — 4 damage, 3 targets + per-dagger bonuses
# Daggers: The Beginning and The End (duality), Nameless Blade (shadow strike)
# Run as player, anchored eyes, ec.rg_swinger tag set

# === CONE TARGETING: 1.5b forward, 2.5b sphere, 3 targets (wide cleave) ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2.5,limit=3,sort=nearest] run damage @s 4 minecraft:player_attack by @a[tag=ec.rg_swinger,limit=1]

# === VISUAL EFFECTS (on each target) ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2.5,limit=3,sort=nearest] at @s run function evercraft:artifacts/rogue/effects

# === PER-DAGGER BONUSES ===
# The Beginning and The End — Duality: alternates fire and frost each swing
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"the_beginning_and_the_end"}] run function evercraft:artifacts/rogue/bonus/duality

# Nameless Blade — Shadow Strike: 20% chance for Invisibility 1s after swing
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"xara_sword"}] run function evercraft:artifacts/rogue/bonus/shadow_strike

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.9 1.1
