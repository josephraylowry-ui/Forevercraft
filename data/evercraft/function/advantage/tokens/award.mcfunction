# Tokens — Award Tree Tokens (macro function)
# Called with: {amount: <int>}
# Give prismarine_crystals items with custom_data={tree_token:1b} to player
# Increment adv.tok_earned, tellraw notification with token count

$give @s minecraft:prismarine_crystals[minecraft:custom_data={tree_token:1b},minecraft:custom_name={text:"Tree Token",color:"green",italic:false}] $(amount)
$scoreboard players add @s adv.tok_earned $(amount)
$tellraw @s [{text:"✦ ",color:"gold"},{text:"+$(amount) Tree Token",color:"green"},{text:"(s)!",color:"green"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.8
