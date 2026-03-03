# Artifact Transmutation GUI — Open
# Run as: player, at player position

# Toggle — if already open, close instead
execute if entity @s[tag=TX.InMenu] run return run function evercraft:transmute/gui/close

# Safety: kill orphaned menu elements
execute at @s run kill @e[type=text_display,tag=TX.MenuEl,distance=..8]
execute at @s run kill @e[type=interaction,tag=TX.MenuEl,distance=..8]
execute at @s run kill @e[type=item_display,tag=TX.MenuEl,distance=..8]

# Tag player
tag @s add TX.InMenu

# === BACKGROUND PANEL ===
execute rotated ~ 0 positioned ^ ^1.3 ^1.8 run summon item_display ~ ~ ~ { \
  Tags:["TX.MenuEl","TX.BG"], \
  billboard:"center", \
  item:{id:"black_stained_glass_pane",count:1}, \
  item_display:"fixed", \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.8f,1.9f,0.01f]} \
}

# === TITLE ===
execute rotated ~ 0 positioned ^ ^2.0 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["TX.MenuEl","TX.Title"], \
  billboard:"center", \
  text:[{text:"\u2726 ",color:"dark_purple"},{text:"Artifact Transmutation",color:"light_purple",bold:true},{text:" \u2726",color:"dark_purple"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]} \
}

# === INFO LINE ===
execute rotated ~ 0 positioned ^ ^1.75 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["TX.MenuEl","TX.Info"], \
  billboard:"center", \
  text:{text:"Sacrifice artifacts of the same tier to receive one of the next tier.",color:"gray"}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]} \
}

# === STATUS LINE (refreshable — shows deposit count/tier) ===
execute rotated ~ 0 positioned ^ ^1.5 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["TX.MenuEl","TX.Status"], \
  billboard:"center", \
  text:{text:"Hold an artifact and click [Deposit] below.",color:"dark_gray"}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}

# === RESULT LINE (refreshable — shows tier upgrade path) ===
execute rotated ~ 0 positioned ^ ^1.3 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["TX.MenuEl","TX.Result"], \
  billboard:"center", \
  text:{text:"",color:"gray"}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}

# === DISCOUNT LINE (refreshable — Artificer nearby status) ===
execute rotated ~ 0 positioned ^ ^1.1 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["TX.MenuEl","TX.Discount"], \
  billboard:"center", \
  text:{text:"",color:"dark_gray"}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]} \
}

# === DEPOSIT BUTTON ===
execute rotated ~ 0 positioned ^ ^0.8 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["TX.MenuEl","TX.DepositTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Deposit Held Artifact",color:"yellow",bold:true},{text:" ]",color:"dark_gray"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}
execute rotated ~ 0 positioned ^ ^0.74 ^1.8 run summon interaction ~ ~ ~ { \
  Tags:["TX.MenuEl","TX.DepositBtn"], \
  width:1.0f,height:0.14f,response:1b \
}

# === TRANSMUTE BUTTON ===
execute rotated ~ 0 positioned ^ ^0.55 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["TX.MenuEl","TX.TransmuteTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Transmute!",color:"dark_gray"},{text:" ]",color:"dark_gray"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}
execute rotated ~ 0 positioned ^ ^0.49 ^1.8 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ { \
  Tags:["TX.MenuEl","TX.TransmuteBtn"], \
  width:0.5f,height:0.12f,response:1b \
}

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^ ^0.55 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["TX.MenuEl","TX.CloseTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]} \
}
execute rotated ~ 0 positioned ^ ^0.49 ^1.8 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ { \
  Tags:["TX.MenuEl","TX.CloseBtn"], \
  width:0.4f,height:0.12f,response:1b \
}

# Initial refresh to set status/discount/result text
function evercraft:transmute/gui/refresh

# Sound
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.4 1.2
