# Shadow Veil — Helm of Shadows
# Grants brief Invisibility on hit
advancement revoke @s only evercraft:artifacts/abilities/shadow_veil_trigger
effect give @s invisibility 3 0 false
execute at @s run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 15
playsound minecraft:entity.illusioner.cast_spell player @s ~ ~ ~ 0.5 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
