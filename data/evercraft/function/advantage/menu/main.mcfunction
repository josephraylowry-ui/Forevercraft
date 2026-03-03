# Advantage Trees — Main Menu
# Triggered by /trigger adv.menu
# Shows overview of all 13 trees with current levels and level-up buttons

tellraw @s {text:""}
tellraw @s [{text:"  ══════════════════════════",color:"dark_gray"}]
tellraw @s [{text:"    ✦ Advantage Trees ✦",color:"gold",bold:true}]
tellraw @s [{text:"  ══════════════════════════",color:"dark_gray"}]
tellraw @s {text:""}

# === ADVENTURE TREES ===
tellraw @s [{text:"  Adventure",color:"red",bold:true}]
tellraw @s [{text:"   Agility ",color:"aqua"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.agility"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 1"},hover_event:{action:"show_text",value:{text:"+4% move speed per level",color:"aqua"}}}]
tellraw @s [{text:"   Dexterity ",color:"yellow"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.dexterity"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 2"},hover_event:{action:"show_text",value:{text:"+2% reach per level",color:"yellow"}}}]
tellraw @s [{text:"   Evasion ",color:"white"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.evasion"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 3"},hover_event:{action:"show_text",value:{text:"+0.25% dodge chance per level",color:"white"}}}]
tellraw @s [{text:"   Stealth ",color:"dark_gray"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.stealth"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 4"},hover_event:{action:"show_text",value:{text:"+4% sneak speed per level",color:"gray"}}}]
tellraw @s [{text:"   Vitality ",color:"red"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.vitality"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 5"},hover_event:{action:"show_text",value:{text:"+1 heart per level (after Lv.5)",color:"red"}}}]
tellraw @s {text:""}

# === PROGRESSION TREES ===
tellraw @s [{text:"  Progression",color:"dark_purple",bold:true}]
tellraw @s [{text:"   Taskmaster ",color:"dark_purple"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.taskmaster"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 6"},hover_event:{action:"show_text",value:{text:"Quest mastery",color:"dark_purple"}}}]
tellraw @s [{text:"   Beastmaster ",color:"green"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.beastmaster"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 7"},hover_event:{action:"show_text",value:{text:"Pet mastery",color:"green"}}}]
tellraw @s [{text:"   Victorian ",color:"dark_red"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.victorian"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 8"},hover_event:{action:"show_text",value:{text:"Combat mastery",color:"dark_red"}}}]
tellraw @s {text:""}

# === GATHERING TREES ===
tellraw @s [{text:"  Gathering",color:"green",bold:true}]
tellraw @s [{text:"   Fishing ",color:"blue"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.fishing"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 9"},hover_event:{action:"show_text",value:{text:"Fishing mastery",color:"blue"}}}]
tellraw @s [{text:"   Mining ",color:"gold"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.mining"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 10"},hover_event:{action:"show_text",value:{text:"Chance to proc Mining Surge on block break",color:"gold"}}}]
tellraw @s [{text:"   Gathering ",color:"green"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.gathering"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 11"},hover_event:{action:"show_text",value:{text:"Harvest mastery",color:"green"}}}]
tellraw @s [{text:"   Blacksmith ",color:"gray"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.blacksmith"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 12"},hover_event:{action:"show_text",value:{text:"Smelting mastery",color:"gray"}}}]
tellraw @s [{text:"   Explorer ",color:"dark_aqua"},{text:"Lv.",color:"gray"},{score:{name:"@s",objective:"adv.explorer"},color:"gold"},{text:" ",color:"gray"},{text:"[+]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger adv.levelup set 13"},hover_event:{action:"show_text",value:{text:"-2% structure refresh timer per level (max 50%)",color:"dark_aqua"}}}]
tellraw @s {text:""}
tellraw @s [{text:"  Right-click Codex ",color:"dark_gray"},{text:"or ",color:"dark_gray"},{text:"/trigger adv.menu",color:"aqua"},{text:" to reopen",color:"dark_gray"}]
tellraw @s {text:""}
