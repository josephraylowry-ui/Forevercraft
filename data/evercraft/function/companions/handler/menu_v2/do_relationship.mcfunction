# Show active pet's relationship status
# Called as the player

# Must have an active pet
execute unless entity @s[tag=Pets.ActivePet] run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Summon a pet first.",color:"red"}]

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Load relationship data
function evercraft:companions/handler/relationship/load_rp

# Show particles above pet
function evercraft:companions/handler/relationship/show_status

# Display relationship info in chat
execute if score @s Pets.RelLevel matches 0 run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Relationship: ",color:"gray"},{text:"Neutral",color:"white"},{text:" | RP: ",color:"gray"},{score:{name:"@s",objective:"Pets.RP"},color:"yellow"},{text:" | Bonus: ",color:"gray"},{score:{name:"@s",objective:"Pets.RelMult"},color:"green"},{text:"%",color:"green"}]
execute if score @s Pets.RelLevel matches 1 run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Relationship: ",color:"gray"},{text:"Friendly",color:"green"},{text:" | RP: ",color:"gray"},{score:{name:"@s",objective:"Pets.RP"},color:"yellow"},{text:" | Bonus: ",color:"gray"},{score:{name:"@s",objective:"Pets.RelMult"},color:"green"},{text:"%",color:"green"}]
execute if score @s Pets.RelLevel matches 2 run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Relationship: ",color:"gray"},{text:"Bonded",color:"aqua"},{text:" | RP: ",color:"gray"},{score:{name:"@s",objective:"Pets.RP"},color:"yellow"},{text:" | Bonus: ",color:"gray"},{score:{name:"@s",objective:"Pets.RelMult"},color:"green"},{text:"%",color:"green"}]
execute if score @s Pets.RelLevel matches 3 run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Relationship: ",color:"gray"},{text:"Devoted",color:"light_purple"},{text:" | RP: ",color:"gray"},{score:{name:"@s",objective:"Pets.RP"},color:"yellow"},{text:" | Bonus: ",color:"gray"},{score:{name:"@s",objective:"Pets.RelMult"},color:"green"},{text:"%",color:"green"}]
execute if score @s Pets.RelLevel matches 4 run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Relationship: ",color:"gray"},{text:"Soulbound",color:"gold"},{text:" | RP: ",color:"gray"},{score:{name:"@s",objective:"Pets.RP"},color:"yellow"},{text:" | Bonus: ",color:"gray"},{score:{name:"@s",objective:"Pets.RelMult"},color:"green"},{text:"%",color:"green"}]
execute if score @s Pets.RelLevel matches 5 run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Relationship: ",color:"gray"},{text:"Eternal Bond",color:"yellow",bold:true},{text:" | RP: ",color:"gray"},{score:{name:"@s",objective:"Pets.RP"},color:"yellow"},{text:" | Bonus: ",color:"gray"},{score:{name:"@s",objective:"Pets.RelMult"},color:"green"},{text:"%",color:"green"}]

# Play a feedback sound
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
