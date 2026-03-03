# Spawn the menu frame/background
# Creates a semi-transparent dark background panel

# Background panel (using tinted glass item display)
# Widened to 2.8f to accommodate wider pet grid spacing (0.20 per column, 6 columns = -0.50 to 0.50)
summon item_display ~ ~ ~ {Tags:["Pets.MenuBG","Pets.MenuElement"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[2.8f,1.4f,0.01f]}}
