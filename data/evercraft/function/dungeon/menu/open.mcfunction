# Dungeon Difficulty Selection — Open Menu
# Run as: player who consumed the dungeon key
# Shows 4 difficulty options + Auto (DR-based) + Cancel

# Toggle — if already in menu, close instead
execute if entity @s[tag=DG.InMenu] run return run function evercraft:dungeon/menu/close

# Safety: kill orphaned menu elements
execute at @s run kill @e[type=text_display,tag=DG.MenuEl,distance=..8]
execute at @s run kill @e[type=interaction,tag=DG.MenuEl,distance=..8]
execute at @s run kill @e[type=item_display,tag=DG.MenuEl,distance=..8]

# Tag player
tag @s add DG.InMenu

# Get player's DR for recommended display
execute store result score #dg_dr ec.var run attribute @s minecraft:luck get

# Calculate recommended difficulty
scoreboard players set #dg_recommend ec.var 0
execute if score #dg_dr ec.var matches 7..17 run scoreboard players set #dg_recommend ec.var 1
execute if score #dg_dr ec.var matches 18..29 run scoreboard players set #dg_recommend ec.var 2
execute if score #dg_dr ec.var matches 30.. run scoreboard players set #dg_recommend ec.var 3

# === BACKGROUND PANEL ===
execute rotated ~ 0 positioned ^ ^1.3 ^1.8 run summon item_display ~ ~ ~ { \
  Tags:["DG.MenuEl","DG.BG"], \
  billboard:"center", \
  item:{id:"black_stained_glass_pane",count:1}, \
  item_display:"fixed", \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.6f,2.2f,0.01f]} \
}

# === TITLE ===
execute rotated ~ 0 positioned ^ ^2.15 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["DG.MenuEl"], \
  billboard:"center", \
  text:[{text:"\u2694 ",color:"dark_purple"},{text:"Select Difficulty",color:"light_purple",bold:true},{text:" \u2694",color:"dark_purple"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]} \
}

# === SUBTITLE (shows recommended) ===
execute rotated ~ 0 positioned ^ ^1.92 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["DG.MenuEl","DG.Subtitle"], \
  billboard:"center", \
  text:{text:"Based on your Dream Rate, choose your challenge.",color:"gray",italic:true}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]} \
}

# === EASY BUTTON (Difficulty 0) ===
execute rotated ~ 0 positioned ^ ^1.68 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["DG.MenuEl","DG.EasyTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Easy",color:"green",bold:true},{text:" ]",color:"dark_gray"},{text:" — Base stats",color:"dark_green"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}
execute rotated ~ 0 positioned ^ ^1.62 ^1.8 run summon interaction ~ ~ ~ { \
  Tags:["DG.MenuEl","DG.EasyBtn"], \
  width:0.8f,height:0.14f,response:1b \
}

# === NORMAL BUTTON (Difficulty 1) ===
execute rotated ~ 0 positioned ^ ^1.42 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["DG.MenuEl","DG.NormalTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Normal",color:"yellow",bold:true},{text:" ]",color:"dark_gray"},{text:" — +25% HP, +15% Dmg",color:"gold"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}
execute rotated ~ 0 positioned ^ ^1.36 ^1.8 run summon interaction ~ ~ ~ { \
  Tags:["DG.MenuEl","DG.NormalBtn"], \
  width:0.8f,height:0.14f,response:1b \
}

# === HARD BUTTON (Difficulty 2) ===
execute rotated ~ 0 positioned ^ ^1.16 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["DG.MenuEl","DG.HardTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Hard",color:"red",bold:true},{text:" ]",color:"dark_gray"},{text:" — +50% HP, +30% Dmg",color:"dark_red"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}
execute rotated ~ 0 positioned ^ ^1.10 ^1.8 run summon interaction ~ ~ ~ { \
  Tags:["DG.MenuEl","DG.HardBtn"], \
  width:0.8f,height:0.14f,response:1b \
}

# === BRUTAL BUTTON (Difficulty 3) ===
execute rotated ~ 0 positioned ^ ^0.9 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["DG.MenuEl","DG.BrutalTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Brutal",color:"dark_red",bold:true},{text:" ]",color:"dark_gray"},{text:" — +100% HP, +50% Dmg",color:"dark_red"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}
execute rotated ~ 0 positioned ^ ^0.84 ^1.8 run summon interaction ~ ~ ~ { \
  Tags:["DG.MenuEl","DG.BrutalBtn"], \
  width:0.8f,height:0.14f,response:1b \
}

# === CANCEL BUTTON ===
execute rotated ~ 0 positioned ^ ^0.55 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["DG.MenuEl","DG.CancelTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Cancel",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]} \
}
execute rotated ~ 0 positioned ^ ^0.49 ^1.8 run summon interaction ~ ~ ~ { \
  Tags:["DG.MenuEl","DG.CancelBtn"], \
  width:0.4f,height:0.12f,response:1b \
}

# Mark the recommended difficulty with a star
execute if score #dg_recommend ec.var matches 0 run data modify entity @e[type=text_display,tag=DG.EasyTxt,limit=1] text set value [{text:"\u2605 ",color:"gold"},{text:"[ ",color:"dark_gray"},{text:"Easy",color:"green",bold:true},{text:" ]",color:"dark_gray"},{text:" — Base stats",color:"dark_green"},{text:" (Recommended)",color:"gold",italic:true}]
execute if score #dg_recommend ec.var matches 1 run data modify entity @e[type=text_display,tag=DG.NormalTxt,limit=1] text set value [{text:"\u2605 ",color:"gold"},{text:"[ ",color:"dark_gray"},{text:"Normal",color:"yellow",bold:true},{text:" ]",color:"dark_gray"},{text:" — +25% HP, +15% Dmg",color:"gold"},{text:" (Recommended)",color:"gold",italic:true}]
execute if score #dg_recommend ec.var matches 2 run data modify entity @e[type=text_display,tag=DG.HardTxt,limit=1] text set value [{text:"\u2605 ",color:"gold"},{text:"[ ",color:"dark_gray"},{text:"Hard",color:"red",bold:true},{text:" ]",color:"dark_gray"},{text:" — +50% HP, +30% Dmg",color:"dark_red"},{text:" (Recommended)",color:"gold",italic:true}]
execute if score #dg_recommend ec.var matches 3 run data modify entity @e[type=text_display,tag=DG.BrutalTxt,limit=1] text set value [{text:"\u2605 ",color:"gold"},{text:"[ ",color:"dark_gray"},{text:"Brutal",color:"dark_red",bold:true},{text:" ]",color:"dark_gray"},{text:" — +100% HP, +50% Dmg",color:"dark_red"},{text:" (Recommended)",color:"gold",italic:true}]

# Sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 1.2
