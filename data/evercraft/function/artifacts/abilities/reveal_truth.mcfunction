# Reveal Truth — Truthseeker
# Target glows + gets Weakness II
advancement revoke @s only evercraft:artifacts/abilities/reveal_truth_trigger
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run effect give @s glowing 10 0 false
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run effect give @s weakness 5 1 false
execute at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 1 20
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
