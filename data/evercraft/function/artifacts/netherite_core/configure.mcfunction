# Configure Ancient Netherite Core effects
# Hold the core and run this to open configuration

# Check if player is holding the Ancient Netherite Core
execute unless items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b}] run tellraw @s ["",{text:"Hold the Ancient Netherite Core in your main hand!",color:"red"}]
execute unless items entity @s weapon.mainhand minecraft:beacon[custom_data~{ancient_netherite_core:1b}] run return 0

# Show configuration menu
tellraw @s ["",{text:"Ancient Netherite Core Configuration",color:"gold",bold:true}]
tellraw @s ""
tellraw @s ["",{text:"Primary Effect:",color:"gray"}]
tellraw @s ["",{text:"  [Speed]",color:"aqua",click_event:{action:"run_command",command:"/trigger ec.ncore set 1"},hover_event:{action:"show_text",value:"Click to set Speed as primary"}}]
tellraw @s ["",{text:"  [Haste]",color:"yellow",click_event:{action:"run_command",command:"/trigger ec.ncore set 2"},hover_event:{action:"show_text",value:"Click to set Haste as primary"}}]
tellraw @s ["",{text:"  [Resistance]",color:"blue",click_event:{action:"run_command",command:"/trigger ec.ncore set 3"},hover_event:{action:"show_text",value:"Click to set Resistance as primary (Level 2+)"}}]
tellraw @s ["",{text:"  [Jump Boost]",color:"green",click_event:{action:"run_command",command:"/trigger ec.ncore set 4"},hover_event:{action:"show_text",value:"Click to set Jump Boost as primary (Level 2+)"}}]
tellraw @s ["",{text:"  [Strength]",color:"red",click_event:{action:"run_command",command:"/trigger ec.ncore set 5"},hover_event:{action:"show_text",value:"Click to set Strength as primary (Level 3+)"}}]
tellraw @s ""
tellraw @s ["",{text:"Secondary Effect (Level 4 only):",color:"gray"}]
tellraw @s ["",{text:"  [Regeneration]",color:"light_purple",click_event:{action:"run_command",command:"/trigger ec.ncore set 6"},hover_event:{action:"show_text",value:"Click to add Regeneration"}}]
tellraw @s ["",{text:"  [Upgrade Primary to II]",color:"gold",click_event:{action:"run_command",command:"/trigger ec.ncore set 7"},hover_event:{action:"show_text",value:"Click to upgrade your primary effect to level II"}}]
