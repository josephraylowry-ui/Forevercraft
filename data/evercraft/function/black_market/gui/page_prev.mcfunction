# Black Market — Previous Page
data remove entity @s interaction
execute as @a[tag=BM.InMenu,distance=..8,limit=1] run scoreboard players set @s ec.bm_page 1
execute as @a[tag=BM.InMenu,distance=..8,limit=1] at @s run function evercraft:black_market/gui/refresh
