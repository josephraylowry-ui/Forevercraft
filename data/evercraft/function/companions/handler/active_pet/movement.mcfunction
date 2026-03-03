execute if entity @p[distance=60.., tag=Pets.Owner, predicate=evercraft:companions/is_moving, limit=1] run return run tp @s @p[distance=60.., tag=Pets.Owner, predicate=evercraft:companions/is_moving, limit=1]

# --------------------------------------------------------------------------------- #

execute if entity @p[distance=3.5.., tag=Pets.Owner, predicate=evercraft:companions/is_moving, limit=1] facing entity @p[tag=Pets.Owner, limit=1] eyes run return run tp @s ^ ^ ^1 ~180 0

# hidden check
execute if entity @p[tag=Pets.Owner, tag=Pets.Hidden, limit=1] run return fail

execute unless score @s Pets.Calc matches 0.. run scoreboard players set @s Pets.Calc 35
scoreboard players remove @s Pets.Calc 1

execute if score @s Pets.Calc matches 0 store result score #Movement.Y Pets.Calc run data get entity @p[tag=Pets.Owner, limit=1] Pos[1] 1000
execute if score @s Pets.Calc matches 0 run scoreboard players add #Movement.Y Pets.Calc 1750

execute if score @s Pets.Calc matches 27 run scoreboard players add #Movement.Y Pets.Calc 250
execute if score @s Pets.Calc matches 18 run scoreboard players remove #Movement.Y Pets.Calc 250
execute if score @s Pets.Calc matches 10 run scoreboard players remove #Movement.Y Pets.Calc 250

execute unless score @s Pets.Calc matches 1..9 unless score @s Pets.Calc matches 11..17 unless score @s Pets.Calc matches 19..26 unless score @s Pets.Calc matches 28..34 store result entity @s Pos[1] double 0.001 run scoreboard players get #Movement.Y Pets.Calc

# Move interaction entity with pet
tp @e[type=interaction, tag=Pets.PetInteract, predicate=evercraft:companions/check_id, limit=1] @s