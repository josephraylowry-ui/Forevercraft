clear @s gray_stained_glass_pane[max_stack_size=1, tooltip_display={hide_tooltip:true}]
clear @s bookshelf[max_stack_size=1]

execute as @s[tag=!Pets.InMenu2] run return run function evercraft:companions/handler/menu/open
execute as @s[tag=Pets.InMenu2] run function evercraft:companions/handler/menu/layout/page_2/open