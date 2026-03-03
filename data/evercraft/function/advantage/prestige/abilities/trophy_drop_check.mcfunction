# Prestige Victorian P3: Trophy Hunter — 15% chance for trophy on mob crate/patron kills
# Called from victorian/apply_bonus when P3 is active

execute store result score #trophy_roll adv.temp run random value 1..100
execute unless score #trophy_roll adv.temp matches 1..15 run return 0

# Rolled successfully — give a trophy item
give @s knowledge_book[custom_name={text:"Battle Trophy",color:"gold",italic:true},lore=[{text:"A trophy from a worthy foe.",color:"gray",italic:false},{text:"Sell to a Retired Adventurer.",color:"dark_gray",italic:false}],enchantment_glint_override=true,custom_data={trophy:1b}] 1

# Feedback
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.5
title @s actionbar [{text:"Trophy Claimed!",color:"gold"}]
