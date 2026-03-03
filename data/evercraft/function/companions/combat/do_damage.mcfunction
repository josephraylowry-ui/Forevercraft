# Pet Combat — Apply Damage (Macro Function)
# Called with storage evercraft:pet_combat {damage: <float>}
$damage @e[tag=pc.target,limit=1] $(damage) minecraft:mob_attack by @s
