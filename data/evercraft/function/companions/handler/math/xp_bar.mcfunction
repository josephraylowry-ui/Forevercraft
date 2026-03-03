scoreboard players remove #XPPercentage Pets.Calc 1

data modify storage evercraft:companions pet_display.xp_bar prepend value {text:"▬", color:"green", bold:true, italic:false}
data remove storage evercraft:companions pet_display.xp_bar[-1]

execute if score #XPPercentage Pets.Calc matches 1.. run return run function evercraft:companions/handler/math/xp_bar