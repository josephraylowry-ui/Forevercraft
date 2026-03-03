# Rogue Tier 1 (Common) — 3 damage, 1 target
# Daggers: Dagger, Hellenic Sword
# Run as player, anchored eyes, ec.rg_swinger tag set

# === CONE TARGETING: 1.5b forward, 2b sphere, 1 target ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=1,sort=nearest] run damage @s 3 minecraft:player_attack by @a[tag=ec.rg_swinger,limit=1]

# === VISUAL EFFECTS ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=1,sort=nearest] at @s run function evercraft:artifacts/rogue/effects

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.5 1.5
