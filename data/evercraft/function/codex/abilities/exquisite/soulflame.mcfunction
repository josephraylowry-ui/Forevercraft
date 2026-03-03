# Ability Display: The Soul Mirror (Ornate Rogue Dagger)
tellraw @s ""
tellraw @s {text:"══════════════════════════════════",color:"dark_purple",bold:true}
tellraw @s [{text:"  "},{text:"The Soul Mirror",color:"dark_purple",bold:true}]
tellraw @s [{text:"  "},{text:"Ornate Rogue Dagger",color:"white"}]
tellraw @s {text:"══════════════════════════════════",color:"dark_purple",bold:true}
tellraw @s ""
tellraw @s [{text:"  "},{text:"Auto-Swing: ",color:"white"},{text:"Every 0.7s",color:"yellow"}]
tellraw @s [{text:"  "},{text:"Damage: ",color:"white"},{text:"5 per swing, 2 targets",color:"red"}]
tellraw @s [{text:"  "},{text:"Dual Wield: ",color:"white"},{text:"Every 0.35s",color:"gold"}]
tellraw @s [{text:"  "},{text:"Bonus: ",color:"white"},{text:"Soul Drain",color:"dark_purple"},{text:" — Darkness (1s) on targets + Strength I (2s) to self",color:"gray"}]
tellraw @s ""
tellraw @s [{text:"  "},{text:"Hold mainhand to auto-attack nearby enemies",color:"gray",italic:true}]
tellraw @s {text:"══════════════════════════════════",color:"dark_purple",bold:true}
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
