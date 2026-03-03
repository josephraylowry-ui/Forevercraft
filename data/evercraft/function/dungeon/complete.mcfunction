# Dungeon Instance System — Complete!
# All 5 waves cleared. Celebrate and reward!

# Victory title
title @a[tag=dg.player] times 10 60 20
title @a[tag=dg.player] title {text:"DUNGEON CLEARED!",color:"gold",bold:true}
title @a[tag=dg.player] subtitle {text:"Victory is yours!",color:"yellow"}

# Chat announcement
tellraw @a [{text:"[Dungeon] ",color:"dark_purple"},{selector:"@a[tag=dg.player]"},{text:" has conquered the Dungeon Challenge!",color:"gold",bold:true}]

# Victory sounds
execute as @a[tag=dg.player] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 1

# Victory particles at center
execute at @e[type=marker,tag=dg.center,limit=1] run particle minecraft:firework ~ ~2 ~ 3 2 3 0.1 200 force
execute at @e[type=marker,tag=dg.center,limit=1] run particle minecraft:totem_of_undying ~ ~2 ~ 2 2 2 0.5 150 force
execute at @e[type=marker,tag=dg.center,limit=1] run particle minecraft:happy_villager ~ ~1 ~ 3 1 3 0.1 50 force

# Set 7-day lockout (store current gametime on the player)
execute store result score @a[tag=dg.player] dg.lockout run time query gametime

# Leaderboard: compute completion time and check personal best
execute as @a[tag=dg.player] run function evercraft:dungeon/leaderboard/check_time

# Grant reward based on Dream Rate
function evercraft:dungeon/reward

# Cleanup
function evercraft:dungeon/cleanup
