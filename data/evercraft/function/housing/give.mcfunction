# ============================================================
# Give Hearthstone item to player
# ============================================================

give @s lodestone[custom_name={text:"Hearthstone",color:"gold",italic:false},custom_data={hearthstone:true},lore=[{text:"Place to claim your home.",color:"gray",italic:false},{text:"64x64 zone with tier buffs + chunk loading.",color:"dark_gray",italic:false},{text:"Upgrade with Netherite Ingots.",color:"dark_gray",italic:false}],enchantment_glint_override=true,rarity=epic] 1
tellraw @s [{text:"[Housing] ",color:"gold"},{text:"You received a ",color:"gray"},{text:"Hearthstone",color:"gold"},{text:"! Place it to claim your home.",color:"gray"}]
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.8 1.0
