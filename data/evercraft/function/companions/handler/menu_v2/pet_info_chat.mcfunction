# Left-click pet head in GUI — show pet info in chat
# Called as: interaction entity with {slot:N} macro
# Requires: #Search Pets.ID set by check_clicks

# Clear attack data (always, even for empty slots)
data remove entity @s attack

# Check pet data exists at this slot
$execute unless data storage evercraft:companions MenuDisplay[$(slot)] run return fail

# Play subtle sound
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5

# === READ PET DATA FROM STORAGE ===

# Copy pet to temp
$data modify storage evercraft:companions info.pet set from storage evercraft:companions MenuDisplay[$(slot)]

# Read display name (profile name property = plain string)
data modify storage evercraft:companions info.name set from storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"name"}].value

# Read level
data modify storage evercraft:companions math.string set string storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #info_level Pets.Calc = #value Pets.Calc

# Read current EXP
data modify storage evercraft:companions math.string set string storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"exp"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #info_exp Pets.Calc = #value Pets.Calc

# Read EXP needed for next level
data modify storage evercraft:companions math.string set string storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"exp"}].signature
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #info_next Pets.Calc = #value Pets.Calc

# Read relationship points
scoreboard players set #info_rp Pets.Calc 0
execute if data storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"relationship"}] run data modify storage evercraft:companions math.string set string storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"relationship"}].value
execute if data storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"relationship"}] run scoreboard players set #value Pets.Calc 0
execute if data storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"relationship"}] run function evercraft:companions/handler/math/string_to_int
execute if data storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"relationship"}] run scoreboard players operation #info_rp Pets.Calc = #value Pets.Calc

# Derive mood from RP
function evercraft:companions/handler/menu_v2/get_mood

# Store mood text component as string for interpret:true in tellraw
data modify storage evercraft:companions info.mood_text set value '{text:"Wary",color:"dark_gray"}'
execute if score #mood Pets.Calc matches 0 run data modify storage evercraft:companions info.mood_text set value '{text:"Lonely",color:"red",italic:true}'
execute if score #mood Pets.Calc matches 2 run data modify storage evercraft:companions info.mood_text set value '{text:"Uneasy",color:"gray"}'
execute if score #mood Pets.Calc matches 3 run data modify storage evercraft:companions info.mood_text set value '{text:"Content",color:"green"}'
execute if score #mood Pets.Calc matches 4 run data modify storage evercraft:companions info.mood_text set value '{text:"Happy",color:"green"}'
execute if score #mood Pets.Calc matches 5 run data modify storage evercraft:companions info.mood_text set value '{text:"Elated",color:"yellow"}'
execute if score #mood Pets.Calc matches 6 run data modify storage evercraft:companions info.mood_text set value '{text:"Overjoyed",color:"gold",bold:true}'

# === READ MEMORY BITFIELD & COUNT ===

scoreboard players set #mem_bits Pets.Calc 0
execute if data storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"memories"}] run data modify storage evercraft:companions math.string set string storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"memories"}].value
execute if data storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"memories"}] run scoreboard players set #value Pets.Calc 0
execute if data storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"memories"}] run function evercraft:companions/handler/math/string_to_int
execute if data storage evercraft:companions info.pet.components."minecraft:profile".properties[{name:"memories"}] run scoreboard players operation #mem_bits Pets.Calc = #value Pets.Calc

# Popcount — count set bits in #mem_bits (0-10 memories)
scoreboard players set #mem_count Pets.Calc 0

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #2 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b2 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b3 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b4 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b5 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b6 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b7 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b8 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b9 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

# === OUTPUT TO CHAT ===

# Line 1: Header
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"── ",color:"dark_gray"},{nbt:"info.name",storage:"evercraft:companions",color:"gold",bold:true},{text:" ──",color:"dark_gray"}]

# Line 2: Level & EXP
execute if score #info_level Pets.Calc matches ..99 as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run tellraw @s [{text:" Level ",color:"gray"},{score:{name:"#info_level",objective:"Pets.Calc"},color:"yellow",bold:true},{text:" (",color:"gray"},{score:{name:"#info_exp",objective:"Pets.Calc"},color:"aqua"},{text:"/",color:"gray"},{score:{name:"#info_next",objective:"Pets.Calc"},color:"aqua"},{text:" EXP)",color:"gray"}]
execute if score #info_level Pets.Calc matches 100 as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run tellraw @s [{text:" Level ",color:"gray"},{text:"100",color:"yellow",bold:true},{text:" ",color:"dark_gray"},{text:"(MAX)",color:"gold",bold:true}]

# Line 3: Mood + Memories
execute as @a[tag=Pets.InMenuV2,predicate=evercraft:companions/check_id] run tellraw @s [{text:" Mood: ",color:"gray"},{nbt:"info.mood_text",storage:"evercraft:companions",interpret:true},{text:" · ",color:"dark_gray"},{text:"Memories: ",color:"gray"},{score:{name:"#mem_count",objective:"Pets.Calc"},color:"light_purple"},{text:"/10",color:"gray"}]
