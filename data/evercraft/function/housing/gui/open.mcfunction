# ============================================================
# Hearthstone GUI — Open
# Run as: player, at player position
# ============================================================

# Toggle — if already open, close instead
execute if entity @s[tag=HS.InMenu] run return run function evercraft:housing/gui/close

# Safety: kill orphaned menu elements
execute at @s run kill @e[type=text_display,tag=HS.MenuEl,distance=..8]
execute at @s run kill @e[type=interaction,tag=HS.MenuEl,distance=..8]
execute at @s run kill @e[type=item_display,tag=HS.MenuEl,distance=..8]

# Tag player
tag @s add HS.InMenu

# === BACKGROUND PANEL ===
execute rotated ~ 0 positioned ^ ^1.3 ^1.8 run summon item_display ~ ~ ~ { \
  Tags:["HS.MenuEl","HS.BG"], \
  billboard:"center", \
  item:{id:"black_stained_glass_pane",count:1}, \
  item_display:"fixed", \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.8f,2.1f,0.01f]} \
}

# === TITLE ===
execute rotated ~ 0 positioned ^ ^2.1 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["HS.MenuEl","HS.Title"], \
  billboard:"center", \
  text:[{text:"\u2726 ",color:"gold"},{text:"Hearthstone",color:"yellow",bold:true},{text:" \u2726",color:"gold"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]} \
}

# === TIER LINE (refreshable) ===
execute rotated ~ 0 positioned ^ ^1.85 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["HS.MenuEl","HS.Tier"], \
  billboard:"center", \
  text:{text:"Loading...",color:"gray"}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}

# === BUFFS LINE (refreshable — shows current zone buffs) ===
execute rotated ~ 0 positioned ^ ^1.65 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["HS.MenuEl","HS.Buffs"], \
  billboard:"center", \
  text:{text:"",color:"gray"}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]} \
}

# === DECORATION SCORE (refreshable) ===
execute rotated ~ 0 positioned ^ ^1.5 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["HS.MenuEl","HS.Decor"], \
  billboard:"center", \
  text:{text:"",color:"gray"}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]} \
}

# === NEXT TIER INFO (refreshable — shows what upgrade gives) ===
execute rotated ~ 0 positioned ^ ^1.35 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["HS.MenuEl","HS.Next"], \
  billboard:"center", \
  text:{text:"",color:"gray"}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]} \
}

# === COST LINE (refreshable — shows netherite ingot cost) ===
execute rotated ~ 0 positioned ^ ^1.2 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["HS.MenuEl","HS.Cost"], \
  billboard:"center", \
  text:{text:"",color:"gray"}, \
  background:0,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]} \
}

# === UPGRADE BUTTON ===
execute rotated ~ 0 positioned ^ ^0.9 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["HS.MenuEl","HS.UpgradeTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Upgrade",color:"dark_gray"},{text:" ]",color:"dark_gray"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]} \
}
execute rotated ~ 0 positioned ^ ^0.84 ^1.8 run summon interaction ~ ~ ~ { \
  Tags:["HS.MenuEl","HS.UpgradeBtn"], \
  width:0.6f,height:0.14f,response:1b \
}

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^ ^0.6 ^1.78 run summon text_display ~ ~ ~ { \
  brightness:{block:15,sky:15},shadow_radius:0f, \
  Tags:["HS.MenuEl","HS.CloseTxt"], \
  billboard:"center", \
  text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], \
  background:1,shadow:1b, \
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]} \
}
execute rotated ~ 0 positioned ^ ^0.54 ^1.8 run summon interaction ~ ~ ~ { \
  Tags:["HS.MenuEl","HS.CloseBtn"], \
  width:0.4f,height:0.12f,response:1b \
}

# Initial refresh to set tier/buffs/cost text
function evercraft:housing/gui/refresh

# Sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 1.2
