# Swift Strikes — Battlestaff
# Grants Haste II for 5 seconds on hit (faster attack)
advancement revoke @s only evercraft:artifacts/abilities/swift_strikes_trigger
effect give @s haste 5 1 false
execute at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0.5 8
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.5 2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
