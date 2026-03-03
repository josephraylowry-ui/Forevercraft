# Rogue Tier 4 (Ornate) — 5 damage, 2 targets + per-dagger bonuses
# Daggers: Void-Touched Blade (void strike), The Soul Mirror (soul drain)
# Run as player, anchored eyes, ec.rg_swinger tag set

# === CONE TARGETING: 1.5b forward, 2b sphere, 2 targets (cleave) ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=2,sort=nearest] run damage @s 5 minecraft:player_attack by @a[tag=ec.rg_swinger,limit=1]

# === VISUAL EFFECTS (on each target) ===
execute positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=2,sort=nearest] at @s run function evercraft:artifacts/rogue/effects

# === PER-DAGGER BONUSES ===
# Void-Touched Blade — Void Strike: 15% chance to levitate target for 1s
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"voidbane"}] run function evercraft:artifacts/rogue/bonus/void_strike

# The Soul Mirror — Soul Drain: Darkness 1s on targets + Strength I 2s to self
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"soulflame"}] positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2,limit=2,sort=nearest] run effect give @s darkness 1 0
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"soulflame"}] run effect give @s strength 2 0
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"soulflame"}] positioned ^ ^ ^1.5 run particle sculk_soul ~ ~1 ~ 0.3 0.3 0.3 0.02 3

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 0.8 1.2
