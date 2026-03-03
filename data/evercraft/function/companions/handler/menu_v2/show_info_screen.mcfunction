# Pet Info + Memories — GUI Overlay Screen
# Hides the pet grid and spawns text_display overlay showing pet info and memories
# Run as: player in menu with active pet
# Requires: #Search Pets.ID already set

tag @s add Pets.InfoScreen

# === READ PET DATA ===

# Read level
data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #info_level Pets.Calc = #value Pets.Calc

# Read current exp
data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"exp"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #info_exp Pets.Calc = #value Pets.Calc

# Read exp needed for next level
data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"exp"}].signature
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #info_next Pets.Calc = #value Pets.Calc

# Store pet display name
data modify storage evercraft:companions info.name set from entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"name"}].value

# Read memory bitfield (default 0 if no memories property)
scoreboard players set #mem_bits Pets.Calc 0
execute if data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}] run data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}].value
execute if data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}] run scoreboard players set #value Pets.Calc 0
execute if data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}] run function evercraft:companions/handler/math/string_to_int
execute if data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}] run scoreboard players operation #mem_bits Pets.Calc = #value Pets.Calc

# Get memory count
function evercraft:companions/memories/get_count

# Read relationship points (default 0 if no relationship property)
scoreboard players set #info_rp Pets.Calc 0
execute if data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"relationship"}] run data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"relationship"}].value
execute if data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"relationship"}] run scoreboard players set #value Pets.Calc 0
execute if data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"relationship"}] run function evercraft:companions/handler/math/string_to_int
execute if data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"relationship"}] run scoreboard players operation #info_rp Pets.Calc = #value Pets.Calc

# Derive mood from RP
function evercraft:companions/handler/menu_v2/get_mood

# === HIDE PET GRID ===

execute as @e[type=item_display,tag=Pets.PetSlot,predicate=evercraft:companions/check_id] run data modify entity @s transformation.scale set value [0f,0f,0f]
execute as @e[type=interaction,tag=Pets.PetClick,predicate=evercraft:companions/check_id] run data modify entity @s width set value 0f
execute as @e[type=interaction,tag=Pets.PetClick,predicate=evercraft:companions/check_id] run data modify entity @s height set value 0f

# Change ? button to [Back]
execute as @e[type=text_display,tag=Pets.MenuInfoText,predicate=evercraft:companions/check_id] run data modify entity @s text set value [{text:"[",color:"dark_gray"},{text:"Back",color:"yellow",bold:true},{text:"]",color:"dark_gray"}]

# Change title to pet name
execute as @e[type=text_display,tag=Pets.MenuTitle,predicate=evercraft:companions/check_id] run data modify entity @s text set value [{nbt:"info.name",storage:"evercraft:companions",color:"gold",bold:true},{text:" — Info",color:"gray"}]

# === SPAWN INFO OVERLAY ===
# All entities tagged Pets.InfoOverlay + Pets.MenuElement + Pets.InfoNew

# Level & EXP line
execute rotated ~ 0 positioned ^ ^1.68 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"Level ",color:"gray"},{score:{name:"#info_level",objective:"Pets.Calc"},color:"yellow",bold:true},{text:" (",color:"gray"},{score:{name:"#info_exp",objective:"Pets.Calc"},color:"aqua"},{text:"/",color:"gray"},{score:{name:"#info_next",objective:"Pets.Calc"},color:"aqua"},{text:" EXP)",color:"gray"}],background:0,shadow:1b,see_through:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}

# MAX level variant (overwrite text if level 100)
execute if score #info_level Pets.Calc matches 100 as @e[type=text_display,tag=Pets.InfoNew,distance=..3,limit=1] run data modify entity @s text set value [{text:"Level ",color:"gray"},{text:"100",color:"yellow",bold:true},{text:" ",color:"dark_gray"},{text:"(MAX)",color:"gold",bold:true}]

# Kill counter (pet-assisted kills this session)
execute rotated ~ 0 positioned ^ ^1.64 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"⚔ Kills: ",color:"gray"},{score:{name:"@s",objective:"Pets.Kills"},color:"red",bold:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Separator
execute rotated ~ 0 positioned ^ ^1.61 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"════════════════════",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Mood indicator (default: Wary, then overwrite based on mood score)
execute rotated ~ 0 positioned ^ ^1.58 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew","Pets.MoodText"],billboard:"center",text:[{text:"Mood: ",color:"gray"},{text:"Wary",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #mood Pets.Calc matches 0 as @e[type=text_display,tag=Pets.MoodText,tag=Pets.InfoNew,limit=1] run data modify entity @s text set value [{text:"Mood: ",color:"gray"},{text:"Lonely",color:"red",italic:true}]
execute if score #mood Pets.Calc matches 2 as @e[type=text_display,tag=Pets.MoodText,tag=Pets.InfoNew,limit=1] run data modify entity @s text set value [{text:"Mood: ",color:"gray"},{text:"Uneasy",color:"gray"}]
execute if score #mood Pets.Calc matches 3 as @e[type=text_display,tag=Pets.MoodText,tag=Pets.InfoNew,limit=1] run data modify entity @s text set value [{text:"Mood: ",color:"gray"},{text:"Content",color:"green"}]
execute if score #mood Pets.Calc matches 4 as @e[type=text_display,tag=Pets.MoodText,tag=Pets.InfoNew,limit=1] run data modify entity @s text set value [{text:"Mood: ",color:"gray"},{text:"Happy",color:"green"}]
execute if score #mood Pets.Calc matches 5 as @e[type=text_display,tag=Pets.MoodText,tag=Pets.InfoNew,limit=1] run data modify entity @s text set value [{text:"Mood: ",color:"gray"},{text:"Elated",color:"yellow"}]
execute if score #mood Pets.Calc matches 6 as @e[type=text_display,tag=Pets.MoodText,tag=Pets.InfoNew,limit=1] run data modify entity @s text set value [{text:"Mood: ",color:"gray"},{text:"Overjoyed",color:"gold",bold:true}]
tag @e[tag=Pets.MoodText] remove Pets.MoodText

# Memories header with count and bonus
execute if score #mem_count Pets.Calc matches ..4 rotated ~ 0 positioned ^ ^1.55 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"Memories ",color:"light_purple",bold:true},{text:"(",color:"gray"},{score:{name:"#mem_count",objective:"Pets.Calc"},color:"light_purple"},{text:"/10)",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute if score #mem_count Pets.Calc matches 5..7 rotated ~ 0 positioned ^ ^1.55 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"Memories ",color:"light_purple",bold:true},{text:"(",color:"gray"},{score:{name:"#mem_count",objective:"Pets.Calc"},color:"light_purple"},{text:"/10) ",color:"gray"},{text:"+10% Bond XP",color:"yellow"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute if score #mem_count Pets.Calc matches 8..9 rotated ~ 0 positioned ^ ^1.55 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"Memories ",color:"light_purple",bold:true},{text:"(",color:"gray"},{score:{name:"#mem_count",objective:"Pets.Calc"},color:"light_purple"},{text:"/10) ",color:"gray"},{text:"+15% Bond XP",color:"yellow"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
execute if score #mem_count Pets.Calc matches 10 rotated ~ 0 positioned ^ ^1.55 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"Memories ",color:"light_purple",bold:true},{text:"(10/10) ",color:"gray"},{text:"+25% Bond XP",color:"gold",bold:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}

# === MEMORY LINES (10 entries, bitfield check) ===
# Each memory: check bit → spawn unlocked (light_purple) or locked (dark_gray ???)

# Memory 0: First Steps Together (bit 0)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.48 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"light_purple"},{text:"First Steps Together",color:"light_purple"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.48 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Memory 1: The Hunt (bit 1)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #2 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.43 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"light_purple"},{text:"The Hunt",color:"light_purple"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.43 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Memory 2: Against the Colossus (bit 2)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b2 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.38 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"light_purple"},{text:"Against the Colossus",color:"light_purple"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.38 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Memory 3: Treasure Found (bit 3)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b3 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.33 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"light_purple"},{text:"Treasure Found",color:"light_purple"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.33 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Memory 4: New Horizons (bit 4)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b4 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.28 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"light_purple"},{text:"New Horizons",color:"light_purple"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.28 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Memory 5: The Long Road (bit 5)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b5 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.23 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"light_purple"},{text:"The Long Road",color:"light_purple"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.23 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Memory 6: Into the Depths (bit 6)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b6 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.18 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"light_purple"},{text:"Into the Depths",color:"light_purple"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.18 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Memory 7: Through the Portal (bit 7)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b7 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.13 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"light_purple"},{text:"Through the Portal",color:"light_purple"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.13 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Memory 8: A Mythical Discovery (bit 8)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b8 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.08 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"light_purple"},{text:"A Mythical Discovery",color:"light_purple"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.08 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Memory 9: Eternal Bond (bit 9) — gold+bold when unlocked
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b9 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 rotated ~ 0 positioned ^ ^1.03 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:[{text:"✦ ",color:"gold"},{text:"Eternal Bond",color:"gold",bold:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
execute if score #check Pets.Calc matches 0 rotated ~ 0 positioned ^ ^1.03 ^1.48 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Pets.InfoOverlay","Pets.MenuElement","Pets.InfoNew"],billboard:"center",text:{text:"   ???",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# === ASSIGN OWNERSHIP TO ALL NEW OVERLAY ENTITIES ===

execute as @e[type=text_display,tag=Pets.InfoNew] run scoreboard players operation @s Pets.ID = #Search Pets.ID
tag @e[tag=Pets.InfoNew] remove Pets.InfoNew

# Sound
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.0
