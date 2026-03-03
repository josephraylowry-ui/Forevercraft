# Critical Edge - Katana ability
# +50% damage on critical hits
# Runs when player deals damage while holding katana and is falling (crit condition)

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/critical_edge_trigger

# Apply strength effect briefly to simulate bonus damage
# Strength I = +3 damage, which is roughly +50% on a katana (8 base = 11 total)
effect give @s strength 1 0 false

# Visual/audio feedback
particle crit ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
