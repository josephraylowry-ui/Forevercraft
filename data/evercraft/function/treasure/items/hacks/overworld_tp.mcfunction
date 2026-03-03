
particle minecraft:end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10 force
playsound minecraft:entity.evoker.cast_spell player @a[distance=..15] ~ ~ ~ 0.5 1 1


execute as @s[predicate=evercraft:treasure/the_end] in minecraft:overworld run tp ~ ~300 ~

effect give @s slow_falling 60 3 true

execute at @s run particle minecraft:poof ~ ~2 ~ 1 1 1 0 100 force

advancement revoke @s only evercraft:treasure/hack/overworld_tp