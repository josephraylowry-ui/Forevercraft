# Re-give the consumed token
loot give @s loot evercraft:weapon_mastery/prestige_token
tellraw @s [{text:"[Weapon Mastery] ",color:"gold"},{text:"This weapon has reached maximum prestige!",color:"red"}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.5
