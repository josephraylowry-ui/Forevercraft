effect give @s strength 5 3
effect give @e[advancements={evercraft:treasure/items/totems/totem_of_assassination=false},distance=..10] blindness 10 1 true

particle minecraft:dust{color:[1.000,0.129,0.129],scale:1} ~ ~ ~ 1.2 0.6 1.2 0 500

playsound minecraft:entity.polar_bear.warning master @a[distance=..20] ~ ~ ~ 2 0.1 1

advancement revoke @s only evercraft:treasure/items/totems/totem_of_assassination