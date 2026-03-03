# Page 5 click detection — Boss Titles (0-10) + Champion
# Run as the player with menu open

# Boss title clicks (equip highest available tier)
execute as @e[type=interaction,tag=Adv.BTClick0,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:1}
execute as @e[type=interaction,tag=Adv.BTClick1,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:2}
execute as @e[type=interaction,tag=Adv.BTClick2,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:3}
execute as @e[type=interaction,tag=Adv.BTClick3,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:4}
execute as @e[type=interaction,tag=Adv.BTClick4,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:5}
execute as @e[type=interaction,tag=Adv.BTClick5,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:6}
execute as @e[type=interaction,tag=Adv.BTClick6,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:7}
execute as @e[type=interaction,tag=Adv.BTClick7,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:8}
execute as @e[type=interaction,tag=Adv.BTClick8,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:9}
execute as @e[type=interaction,tag=Adv.BTClick9,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:10}
execute as @e[type=interaction,tag=Adv.BTClick10,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:11}

# Champion title click
execute as @e[type=interaction,tag=Adv.BTChampClick,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_boss_title_champion
