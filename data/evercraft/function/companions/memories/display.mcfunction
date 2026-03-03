# Companion Memories — Display Memory Timeline
# Shows all unlocked memories for the active pet
# Run as: player

execute unless entity @s[tag=Pets.ActivePet] run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Summon a pet first.",color:"red"}]

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Read bitfield
execute unless data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}] run return run tellraw @s [{text:"  ",color:"dark_gray"},{text:"No memories yet.",color:"gray","italic":true}]

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #mem_bits Pets.Calc = #value Pets.Calc

# Get count for header
function evercraft:companions/memories/get_count

# Header
tellraw @s {text:""}
tellraw @s [{text:" Companion Memories",color:"light_purple",bold:true},{text:" (",color:"gray"},{score:{name:"#mem_count",objective:"Pets.Calc"},color:"light_purple"},{text:"/10)",color:"gray"}]
tellraw @s [{text:" ═══════════════════════════",color:"dark_gray"}]

# Check each bit and display if set
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"First Steps Together","color":"light_purple"}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #2 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"The Hunt","color":"light_purple"}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b2 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"Against the Colossus","color":"light_purple"}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b3 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"Treasure Found","color":"light_purple"}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b4 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"New Horizons","color":"light_purple"}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b5 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"The Long Road","color":"light_purple"}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b6 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"Into the Depths","color":"light_purple"}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b7 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"Through the Portal","color":"light_purple"}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b8 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"A Mythical Discovery","color":"light_purple"}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b9 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"Eternal Bond","color":"gold","bold":true}]
execute if score #check Pets.Calc matches 0 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"???","color":"dark_gray","italic":true}]

# Bonus display
tellraw @s [{text:" ═══════════════════════════",color:"dark_gray"}]
execute if score #mem_count Pets.Calc matches ..4 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"Bond Bonus: ","color":"gray"},{"text":"None","color":"dark_gray"},{"text":" (need 5 memories)","color":"dark_gray","italic":true}]
execute if score #mem_count Pets.Calc matches 5..7 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"Bond Bonus: ","color":"gray"},{"text":"+10% Bond XP","color":"yellow"}]
execute if score #mem_count Pets.Calc matches 8..9 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"Bond Bonus: ","color":"gray"},{"text":"+15% Bond XP","color":"yellow"}]
execute if score #mem_count Pets.Calc matches 10 run tellraw @s [{text:"  ","color":"dark_gray"},{"text":"Bond Bonus: ","color":"gray"},{"text":"+25% Bond XP","color":"gold","bold":true}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.0
