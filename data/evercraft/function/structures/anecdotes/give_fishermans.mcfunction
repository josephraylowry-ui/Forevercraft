# Give Fisherman's Anecdote to player and mark as received
# Run as player, at barrel position

# Insert into the barrel
loot insert ~ ~ ~ loot evercraft:books/fishermans_anecdote

# Mark player as having received this anecdote
scoreboard players set @s ec.anec_fisher 1

# Notify player
tellraw @s [{text:"[Anecdote] ",color:"dark_purple"},{text:"You found a weathered journal... ",color:"gray",italic:true},{text:"Fisherman's Anecdote",color:"aqua",bold:true}]
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.8
playsound minecraft:block.amethyst_block.step master @s ~ ~ ~ 0.5 1.2
