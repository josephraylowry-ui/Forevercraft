# Check for interaction entity clicks
# Interaction entities set attack/interaction data when clicked

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Check action buttons
execute as @e[type=interaction,tag=Pets.MenuRemoveClick,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/on_remove
execute as @e[type=interaction,tag=Pets.MenuVisClick,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/on_visibility
execute as @e[type=interaction,tag=Pets.MenuRelClick,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/on_relationship
execute as @e[type=interaction,tag=Pets.MenuTreatClick,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/on_treat
execute as @e[type=interaction,tag=Pets.MenuInfoClick,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/on_info

# Check navigation arrows
execute as @e[type=interaction,tag=Pets.MenuNextClick,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/next_page
execute as @e[type=interaction,tag=Pets.MenuPrevClick,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/prev_page

# Check pet slot clicks (0-17)
execute as @e[type=interaction,tag=Pets.Click0,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:0}
execute as @e[type=interaction,tag=Pets.Click1,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:1}
execute as @e[type=interaction,tag=Pets.Click2,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:2}
execute as @e[type=interaction,tag=Pets.Click3,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:3}
execute as @e[type=interaction,tag=Pets.Click4,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:4}
execute as @e[type=interaction,tag=Pets.Click5,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:5}
execute as @e[type=interaction,tag=Pets.Click6,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:6}
execute as @e[type=interaction,tag=Pets.Click7,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:7}
execute as @e[type=interaction,tag=Pets.Click8,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:8}
execute as @e[type=interaction,tag=Pets.Click9,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:9}
execute as @e[type=interaction,tag=Pets.Click10,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:10}
execute as @e[type=interaction,tag=Pets.Click11,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:11}
execute as @e[type=interaction,tag=Pets.Click12,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:12}
execute as @e[type=interaction,tag=Pets.Click13,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:13}
execute as @e[type=interaction,tag=Pets.Click14,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:14}
execute as @e[type=interaction,tag=Pets.Click15,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:15}
execute as @e[type=interaction,tag=Pets.Click16,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:16}
execute as @e[type=interaction,tag=Pets.Click17,predicate=evercraft:companions/check_id] if data entity @s interaction run function evercraft:companions/handler/menu_v2/select_pet {slot:17}

# Check pet slot left-clicks (attack) — show info in chat (0-17)
execute as @e[type=interaction,tag=Pets.Click0,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:0}
execute as @e[type=interaction,tag=Pets.Click1,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:1}
execute as @e[type=interaction,tag=Pets.Click2,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:2}
execute as @e[type=interaction,tag=Pets.Click3,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:3}
execute as @e[type=interaction,tag=Pets.Click4,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:4}
execute as @e[type=interaction,tag=Pets.Click5,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:5}
execute as @e[type=interaction,tag=Pets.Click6,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:6}
execute as @e[type=interaction,tag=Pets.Click7,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:7}
execute as @e[type=interaction,tag=Pets.Click8,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:8}
execute as @e[type=interaction,tag=Pets.Click9,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:9}
execute as @e[type=interaction,tag=Pets.Click10,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:10}
execute as @e[type=interaction,tag=Pets.Click11,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:11}
execute as @e[type=interaction,tag=Pets.Click12,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:12}
execute as @e[type=interaction,tag=Pets.Click13,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:13}
execute as @e[type=interaction,tag=Pets.Click14,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:14}
execute as @e[type=interaction,tag=Pets.Click15,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:15}
execute as @e[type=interaction,tag=Pets.Click16,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:16}
execute as @e[type=interaction,tag=Pets.Click17,predicate=evercraft:companions/check_id] if data entity @s attack run function evercraft:companions/handler/menu_v2/pet_info_chat {slot:17}
