# ============================================================
# Black Market — Close GUI
# ============================================================

tag @s remove BM.InMenu

# Kill all menu elements
execute at @s run kill @e[type=text_display,tag=BM.El,distance=..8]
execute at @s run kill @e[type=interaction,tag=BM.El,distance=..8]
execute at @s run kill @e[type=item_display,tag=BM.El,distance=..8]

# Reset scores
scoreboard players set @s ec.bm_tab 0
scoreboard players set @s ec.bm_page 0
scoreboard players set @s ec.bm_select 0
scoreboard players set @s ec.bm_price 0

# Sound
playsound minecraft:block.barrel.close master @s ~ ~ ~ 0.6 0.8
