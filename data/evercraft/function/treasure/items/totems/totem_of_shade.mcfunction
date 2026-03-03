spreadplayers ~ ~ 8 12 false @s[predicate=evercraft:treasure/weapons/y-level/119_100]
spreadplayers ~ ~ 8 12 false @s[predicate=evercraft:treasure/weapons/y-level/99_80]
spreadplayers ~ ~ 8 12 false @s[predicate=evercraft:treasure/weapons/y-level/79_60]
spreadplayers ~ ~ 8 12 false @s[predicate=evercraft:treasure/weapons/y-level/59_40]
spreadplayers ~ ~ 8 12 false @s[predicate=evercraft:treasure/weapons/y-level/39_20]
spreadplayers ~ ~ 8 12 false @s[predicate=evercraft:treasure/weapons/y-level/19_0]
spreadplayers ~ ~ 8 12 false @s[predicate=evercraft:treasure/weapons/y-level/n1_n20]
spreadplayers ~ ~ 8 12 false @s[predicate=evercraft:treasure/weapons/y-level/n21_n40]
spreadplayers ~ ~ 8 12 false @s[predicate=evercraft:treasure/weapons/y-level/n41_n64]

summon vindicator ~ ~1 ~ {CustomNameVisible:1b,Health:80f,Johnny:1b,Tags:["smithed.entity","mt.johnny"],CustomName:{text:"Johnny",italic:false},equipment:{mainhand:{id:"minecraft:iron_axe",count:1}},attributes:[{id:"minecraft:max_health",base:80},{id:"minecraft:follow_range",base:7},{id:"minecraft:attack_damage",base:20}]}

particle minecraft:dust{color:[0.098,0.09,0.09],scale:1} ~ ~ ~ 1.2 0.6 1.2 0 500

playsound minecraft:entity.vindicator.celebrate master @a[distance=..20] ~ ~ ~ 1 1 1

advancement revoke @s only evercraft:treasure/items/totems/totem_of_shade