# Page 2 click detection — Challenges (0-12) + Cosmetics (0-4)
# Run as the player with menu open

# Challenge row clicks (accept challenge for that tree)
execute as @e[type=interaction,tag=Adv.ChalClick0,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:0}
execute as @e[type=interaction,tag=Adv.ChalClick1,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:1}
execute as @e[type=interaction,tag=Adv.ChalClick2,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:2}
execute as @e[type=interaction,tag=Adv.ChalClick3,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:3}
execute as @e[type=interaction,tag=Adv.ChalClick4,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:4}
execute as @e[type=interaction,tag=Adv.ChalClick5,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:5}
execute as @e[type=interaction,tag=Adv.ChalClick6,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:6}
execute as @e[type=interaction,tag=Adv.ChalClick7,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:7}
execute as @e[type=interaction,tag=Adv.ChalClick8,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:8}
execute as @e[type=interaction,tag=Adv.ChalClick9,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:9}
execute as @e[type=interaction,tag=Adv.ChalClick10,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:10}
execute as @e[type=interaction,tag=Adv.ChalClick11,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:11}
execute as @e[type=interaction,tag=Adv.ChalClick12,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_challenge {row:12}

# Cosmetic tier clicks (toggle cosmetic tier)
execute as @e[type=interaction,tag=Adv.CosmClick0,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:1}
execute as @e[type=interaction,tag=Adv.CosmClick1,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:2}
execute as @e[type=interaction,tag=Adv.CosmClick2,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:3}
execute as @e[type=interaction,tag=Adv.CosmClick3,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:4}
execute as @e[type=interaction,tag=Adv.CosmClick4,distance=..5] if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:5}
