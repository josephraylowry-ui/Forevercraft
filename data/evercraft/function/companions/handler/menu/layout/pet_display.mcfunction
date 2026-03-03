data modify storage evercraft:companions pet_display set from entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components
execute if data storage evercraft:companions pet_display."minecraft:profile".properties[{name:"level", value:"100"}] run return run item modify entity @s container.18 evercraft:companions/max_level

data modify storage evercraft:companions pet_display.xp_bar set value [{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false},{text:"▬", color:"dark_gray", bold:true, italic:false}]

data modify storage evercraft:companions math.string set string storage evercraft:companions pet_display."minecraft:profile".properties[{name:"exp"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #PetXP Pets.Calc = #value Pets.Calc
scoreboard players operation #PetXP Pets.Calc *= #15 Pets.Calc

data modify storage evercraft:companions math.string set string storage evercraft:companions pet_display."minecraft:profile".properties[{name:"exp"}].signature
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #PetXPForNextLevel Pets.Calc = #value Pets.Calc

scoreboard players operation #XPPercentage Pets.Calc = #PetXP Pets.Calc
scoreboard players operation #XPPercentage Pets.Calc /= #PetXPForNextLevel Pets.Calc

execute if score #XPPercentage Pets.Calc matches 1.. run function evercraft:companions/handler/math/xp_bar

scoreboard players operation #PetXP Pets.Calc /= #15 Pets.Calc
scoreboard players operation #PetXP Pets.Calc *= #100 Pets.Calc

scoreboard players operation #XPPercentage Pets.Calc = #PetXP Pets.Calc
scoreboard players operation #XPPercentage Pets.Calc /= #PetXPForNextLevel Pets.Calc

item modify entity @s container.18 evercraft:companions/level_display