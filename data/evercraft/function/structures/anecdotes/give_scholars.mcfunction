# Give Scholar's Anecdote to player and mark as received
# Run as player, at barrel position

# Insert into the barrel
loot insert ~ ~ ~ loot evercraft:books/scholars_anecdote

# Mark player as having received this anecdote
scoreboard players set @s ec.anec_scholar 1

# Notify player
tellraw @s [{text:"[Anecdote] ",color:"dark_purple"},{text:"You found an ancient tome... ",color:"gray",italic:true},{text:"Scholar's Anecdote",color:"dark_purple",bold:true}]
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.8
playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 0.5 1.2
