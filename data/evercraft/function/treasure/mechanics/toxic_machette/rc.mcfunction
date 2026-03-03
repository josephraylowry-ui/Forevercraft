scoreboard players set @s mt.toxic_machette 0

execute in overworld positioned 0.0 0 0.0 summon marker run function evercraft:treasure/mechanics/toxic_machette/apply_motion

playsound minecraft:item.firecharge.use player @a[distance=..10] ~ ~ ~ 0.2 0.6 1

execute store result score #toxic_machette mt.var run random value 1..6

execute if score #toxic_machette mt.var matches 1 run data modify storage evercraft:treasure/toxic_machette id set value 'poison'
execute if score #toxic_machette mt.var matches 2 run data modify storage evercraft:treasure/toxic_machette id set value 'slowness'
execute if score #toxic_machette mt.var matches 3 run data modify storage evercraft:treasure/toxic_machette id set value 'wither'
execute if score #toxic_machette mt.var matches 4 run data modify storage evercraft:treasure/toxic_machette id set value 'weakness'
execute if score #toxic_machette mt.var matches 5 run data modify storage evercraft:treasure/toxic_machette id set value 'mining_fatigue'
execute if score #toxic_machette mt.var matches 6 run data modify storage evercraft:treasure/toxic_machette id set value 'hunger'

execute store result storage evercraft:treasure/toxic_machette amplifier int 1 run random value 0..5
execute store result storage evercraft:treasure/toxic_machette duration int 0.1 run random value 2000..4000
data modify storage evercraft:treasure/toxic_machette owner set from entity @s UUID

execute positioned ~ ~1.5 ~ summon arrow positioned ^ ^ ^1 run function evercraft:treasure/mechanics/toxic_machette/entity with storage evercraft:treasure/toxic_machette

advancement revoke @s only evercraft:treasure/mechanics/toxic_machette/rc