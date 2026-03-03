# Furia subtle particle system — runs every 10 ticks
# Sparse particles, just enough to notice if you look
schedule function evercraft:mobs/furia/particles/init 10t

# Dispatch sparse particles per tier
execute as @e[tag=ec.furia.minor] at @s run function evercraft:mobs/furia/particles/minor
execute as @e[tag=ec.furia.standard] at @s run function evercraft:mobs/furia/particles/standard
execute as @e[tag=ec.furia.greater] at @s run function evercraft:mobs/furia/particles/greater
