# Dungeon Leaderboard — New personal best!
# Run as the player who set a new record

# Update best time (ticks and seconds)
scoreboard players operation @s dg.best_time = @s dg.elapsed
scoreboard players operation @s dg.best_time_s = @s dg.elapsed_s

# Store which instance the best was set on
scoreboard players operation @s dg.best_inst = #dg_instance ec.var

# Celebration
tellraw @s [{text:"  ⚡ ",color:"gold"},{text:"NEW PERSONAL BEST!",color:"gold",bold:true}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
