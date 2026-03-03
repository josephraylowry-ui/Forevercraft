clear @s gray_stained_glass_pane[max_stack_size=1, tooltip_display={hide_tooltip:true}]
clear @s gray_dye[max_stack_size=1]
clear @s purple_dye[max_stack_size=1]
clear @s barrier[max_stack_size=1]
clear @s bookshelf[max_stack_size=1]
clear @s arrow[max_stack_size=1]
clear @s ender_eye[max_stack_size=1]

clear @s enchanted_book[custom_data={petMenu:true, pet:1b}]

execute as @s[tag=Pets.InMenu] run function evercraft:companions/handler/menu/open