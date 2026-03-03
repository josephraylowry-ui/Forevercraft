execute if score #5s Pets.Timer matches ..0 as @e[type=item_display, tag=Pet] at @s run function evercraft:companions/handler/active_pet/check_for_player
execute if score #5s Pets.Timer matches ..0 as @e[type=item_display, tag=Pets.MenuVehicle] at @s run function evercraft:companions/handler/menu/check_for_player

# --------------------------------------------------------------------------------- #

# Relationship system timers
execute if score #1h Pets.Timer matches ..0 run function evercraft:companions/handler/schedule/1h
execute if score #3d Pets.Timer matches ..0 run function evercraft:companions/handler/schedule/3d

execute if score #1d Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/1d
execute if score #18h Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/18h
execute if score #12h Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/12h
execute if score #3m Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/3m
execute if score #2m30s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/2m30s
execute if score #2m Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/2m
execute if score #1m30s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/1m30s
execute if score #1m Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/1m
execute if score #30s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/30s
execute if score #28s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/28s
execute if score #26s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/26s
execute if score #24s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/24s
execute if score #22s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/22s
execute if score #20s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/20s
execute if score #18s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/18s
execute if score #16s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/16s
execute if score #14s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/14s
execute if score #12s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/12s
execute if score #10s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/10s
execute if score #5s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/5s
execute if score #3s Pets.Timer matches ..0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/handler/schedule/3s

# --------------------------------------------------------------------------------- #

scoreboard players remove #1h Pets.Timer 1
scoreboard players remove #3d Pets.Timer 1
scoreboard players remove #1d Pets.Timer 1
scoreboard players remove #18h Pets.Timer 1
scoreboard players remove #12h Pets.Timer 1
scoreboard players remove #3m Pets.Timer 1
scoreboard players remove #2m30s Pets.Timer 1
scoreboard players remove #2m Pets.Timer 1
scoreboard players remove #1m30s Pets.Timer 1
scoreboard players remove #1m Pets.Timer 1
scoreboard players remove #30s Pets.Timer 1
scoreboard players remove #28s Pets.Timer 1
scoreboard players remove #26s Pets.Timer 1
scoreboard players remove #24s Pets.Timer 1
scoreboard players remove #22s Pets.Timer 1
scoreboard players remove #20s Pets.Timer 1
scoreboard players remove #18s Pets.Timer 1
scoreboard players remove #16s Pets.Timer 1
scoreboard players remove #14s Pets.Timer 1
scoreboard players remove #12s Pets.Timer 1
scoreboard players remove #10s Pets.Timer 1
scoreboard players remove #5s Pets.Timer 1
scoreboard players remove #3s Pets.Timer 1

tag @a remove Pets.TimerOwner