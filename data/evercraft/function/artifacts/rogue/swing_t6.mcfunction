# Rogue Tier 6 (Mythical) — 5 damage, 3 targets (Zantetsuken: unlimited) + per-dagger bonuses
# Daggers: Ender Dragon Blade (dragon's edge), Zantetsuken (iai strike)
# Run as player, anchored eyes, ec.rg_swinger tag set

# === CONE TARGETING: per-dagger ===
# Ender Dragon Blade: 3 targets, standard cleave
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ender_dragon_sword"}] positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2.5,limit=3,sort=nearest] run damage @s 5 minecraft:player_attack by @a[tag=ec.rg_swinger,limit=1]

# Zantetsuken — Iai Strike: hits ALL enemies in range (no limit)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2.5,sort=nearest] run damage @s 5 minecraft:player_attack by @a[tag=ec.rg_swinger,limit=1]

# === VISUAL EFFECTS ===
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ender_dragon_sword"}] positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2.5,limit=3,sort=nearest] at @s run function evercraft:artifacts/rogue/effects
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] positioned ^ ^ ^1.5 as @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,type=!text_display,type=!interaction,type=!marker,type=!area_effect_cloud,distance=..2.5,sort=nearest] at @s run function evercraft:artifacts/rogue/effects

# === PER-DAGGER BONUSES ===
# Ender Dragon Blade — Dragon's Edge: Weakness I 3s on hit + dragon breath particles
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ender_dragon_sword"}] run function evercraft:artifacts/rogue/bonus/dragons_edge

# Zantetsuken — Iai Strike particles (wind slash visual)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] positioned ^ ^ ^1.5 run particle sweep_attack ~ ~0.8 ~ 1.0 0.5 1.0 0 8
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"zantetsuken"}] positioned ^ ^ ^1.5 run particle enchanted_hit ~ ~1.0 ~ 0.8 0.4 0.8 0.5 10

# === SOUND ===
playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 1.0 1.0
playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 0.4 1.6
