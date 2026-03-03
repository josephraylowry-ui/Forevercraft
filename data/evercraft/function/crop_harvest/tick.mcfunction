# Crop Auto-Replant — Detect crop breaks while holding a hoe
# Uses minecraft.mined stats per crop type; raycasts to find the empty spot and replants

# Per-crop detection + replant
execute as @a[scores={ec.rh_wheat=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"wheat"}
execute as @a[scores={ec.rh_carrot=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"carrots"}
execute as @a[scores={ec.rh_potato=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"potatoes"}
execute as @a[scores={ec.rh_beet=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"beetroots"}
execute as @a[scores={ec.rh_nwart=1..}] at @s run function evercraft:crop_harvest/on_break {crop:"nether_wart"}

# Reset mined stats
scoreboard players set @a[scores={ec.rh_wheat=1..}] ec.rh_wheat 0
scoreboard players set @a[scores={ec.rh_carrot=1..}] ec.rh_carrot 0
scoreboard players set @a[scores={ec.rh_potato=1..}] ec.rh_potato 0
scoreboard players set @a[scores={ec.rh_beet=1..}] ec.rh_beet 0
scoreboard players set @a[scores={ec.rh_nwart=1..}] ec.rh_nwart 0
