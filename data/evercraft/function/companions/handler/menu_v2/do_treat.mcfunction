# Pet the active pet (give affection, like petting)
# Called as the player
# This is the menu equivalent of the petting action — a quick "treat" that gives 5 RP

# Must have an active pet
execute unless entity @s[tag=Pets.ActivePet] run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Summon a pet first.",color:"red"}]

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Check cooldown — reuse feed cooldown to prevent spam
execute if score @s Pets.FeedCD matches 1.. run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" needs a moment before more treats.",color:"gray"}]

# Load current RP
function evercraft:companions/handler/relationship/load_rp

# Store old level
scoreboard players operation #oldLevel Pets.Calc = @s Pets.RelLevel

# Add 5 RP (same as petting)
scoreboard players set #feedRP Pets.Calc 5
scoreboard players operation @s Pets.RP += #feedRP Pets.Calc

# Cap at 5000
execute if score @s Pets.RP matches 5001.. run scoreboard players set @s Pets.RP 5000

# Save RP
function evercraft:companions/handler/relationship/save_rp

# Set short cooldown (100 ticks = 5 seconds)
scoreboard players set @s Pets.FeedCD 100

# Play petting effects
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run particle heart ~ ~0.5 ~ 0.2 0.2 0.2 0 3
playsound minecraft:entity.cat.purr master @s ~ ~ ~ 0.5 1.2

# Show message
tellraw @s [{text:"[",color:"dark_gray"},{text:"Pets",color:"gold"},{text:"] ",color:"dark_gray"},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" enjoyed the affection! ",color:"green"},{text:"(+5 RP)",color:"yellow"}]

# Recalculate level and check for level up
function evercraft:companions/handler/relationship/load_rp
execute unless score @s Pets.RelLevel = #oldLevel Pets.Calc run function evercraft:companions/handler/relationship/level_up
