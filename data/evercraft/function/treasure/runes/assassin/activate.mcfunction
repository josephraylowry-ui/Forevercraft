scoreboard players set @s mt.assa_rune 200

attribute @s attack_damage modifier add mt.assassin_rune 0.2 add_multiplied_total
attribute @s movement_speed modifier add mt.assassin_rune 0.1 add_multiplied_total

playsound minecraft:entity.husk.death master @a[distance=..20] ~ ~ ~ 1 0.6 1

particle minecraft:smoke ~ ~ ~ 0.2 0.200 0.2 0.1 200 force @a

function evercraft:treasure/runes/assassin/particles

advancement revoke @s only evercraft:treasure/runes/assassin_rune