# Combat Effect: Rush — Double hit (deals same damage again)
function evercraft:companions/combat/do_damage with storage evercraft:pet_combat
execute at @e[tag=pc.target,limit=1] run particle sweep_attack ~ ~1 ~ 0.3 0.3 0.3 0 2
execute at @e[tag=pc.target,limit=1] run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.6 1.5
