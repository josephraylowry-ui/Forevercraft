# Refresh Page 2 challenge displays with current status
# Each tree shows its primary challenge with status: Available / Active
# Challenge IDs: 1-2=Agility, 3=Dex, 4-5=Evasion, 6=Stealth, 7-8=Vitality,
#   9=Task, 10=Beast, 11=Vict, 12=Fish, 13-14=Mining, 15=Gather, 16=Black, 17=Exped
# Run as the player with menu open
# 2-column layout: shorter labels to fit columns

# Helper: store active challenge tree for comparison
scoreboard players operation #active_tree adv.temp = @s adv.chal_tree

# Row 0 — Agility: Marathon (chal 1) — walk 10k blocks
execute unless score @s adv.chal_id matches 1..2 run data modify entity @e[type=text_display,tag=Adv.Chal0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"Marathon",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 1 run data modify entity @e[type=text_display,tag=Adv.Chal0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"Marathon",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 2 run data modify entity @e[type=text_display,tag=Adv.Chal0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"Speedster",color:"white"},{text:" — Active",color:"green"}]

# Row 1 — Dexterity: Precision (chal 3) — hit 100 mobs
execute unless score @s adv.chal_id matches 3 run data modify entity @e[type=text_display,tag=Adv.Chal1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"yellow"},{text:"Precision",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 3 run data modify entity @e[type=text_display,tag=Adv.Chal1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"yellow"},{text:"Precision",color:"white"},{text:" — Active",color:"green"}]

# Row 2 — Evasion: Master (chal 4) — dodge 20 hits
execute unless score @s adv.chal_id matches 4..5 run data modify entity @e[type=text_display,tag=Adv.Chal2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"Master",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 4 run data modify entity @e[type=text_display,tag=Adv.Chal2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"Master",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 5 run data modify entity @e[type=text_display,tag=Adv.Chal2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"Timing",color:"white"},{text:" — Active",color:"green"}]

# Row 3 — Stealth: Assassin (chal 6) — crouch 500 blocks
execute unless score @s adv.chal_id matches 6 run data modify entity @e[type=text_display,tag=Adv.Chal3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"dark_gray"},{text:"Assassin",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 6 run data modify entity @e[type=text_display,tag=Adv.Chal3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"dark_gray"},{text:"Assassin",color:"white"},{text:" — Active",color:"green"}]

# Row 4 — Vitality: Warrior (chal 7) — hit 200 mobs
execute unless score @s adv.chal_id matches 7..8 run data modify entity @e[type=text_display,tag=Adv.Chal4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"Warrior",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 7 run data modify entity @e[type=text_display,tag=Adv.Chal4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"Warrior",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 8 run data modify entity @e[type=text_display,tag=Adv.Chal4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"Endurance",color:"white"},{text:" — Active",color:"green"}]

# Row 5 — Taskmaster: Quests (chal 9) — complete 20 quests
execute unless score @s adv.chal_id matches 9 run data modify entity @e[type=text_display,tag=Adv.Chal5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"dark_purple"},{text:"Quests",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 9 run data modify entity @e[type=text_display,tag=Adv.Chal5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"dark_purple"},{text:"Quests",color:"white"},{text:" — Active",color:"green"}]

# Row 6 — Beastmaster: Beasts (chal 10) — pet abilities
execute unless score @s adv.chal_id matches 10 run data modify entity @e[type=text_display,tag=Adv.Chal6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"green"},{text:"Beasts",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 10 run data modify entity @e[type=text_display,tag=Adv.Chal6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"green"},{text:"Beasts",color:"white"},{text:" — Active",color:"green"}]

# Row 7 — Victorian: Elegant (chal 11) — mob kills
execute unless score @s adv.chal_id matches 11 run data modify entity @e[type=text_display,tag=Adv.Chal7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"dark_red"},{text:"Elegant",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 11 run data modify entity @e[type=text_display,tag=Adv.Chal7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"dark_red"},{text:"Elegant",color:"white"},{text:" — Active",color:"green"}]

# Row 8 — Fishing: Angler (chal 12) — catch fish
execute unless score @s adv.chal_id matches 12 run data modify entity @e[type=text_display,tag=Adv.Chal8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"blue"},{text:"Angler",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 12 run data modify entity @e[type=text_display,tag=Adv.Chal8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"blue"},{text:"Angler",color:"white"},{text:" — Active",color:"green"}]

# Row 9 — Mining: Master (chal 13) — mine blocks
execute unless score @s adv.chal_id matches 13..14 run data modify entity @e[type=text_display,tag=Adv.Chal9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Master",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 13 run data modify entity @e[type=text_display,tag=Adv.Chal9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Master",color:"white"},{text:" — Active",color:"green"}]
execute if score @s adv.chal_id matches 14 run data modify entity @e[type=text_display,tag=Adv.Chal9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Deep Miner",color:"white"},{text:" — Active",color:"green"}]

# Row 10 — Gathering: Harvester (chal 15) — harvest crops
execute unless score @s adv.chal_id matches 15 run data modify entity @e[type=text_display,tag=Adv.Chal10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"green"},{text:"Harvester",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 15 run data modify entity @e[type=text_display,tag=Adv.Chal10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"green"},{text:"Harvester",color:"white"},{text:" — Active",color:"green"}]

# Row 11 — Blacksmith: Smelter (chal 16) — smelt items
execute unless score @s adv.chal_id matches 16 run data modify entity @e[type=text_display,tag=Adv.Chal11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gray"},{text:"Smelter",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 16 run data modify entity @e[type=text_display,tag=Adv.Chal11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gray"},{text:"Smelter",color:"white"},{text:" — Active",color:"green"}]

# Row 12 — Explorer: Explorer (chal 17) — build blocks
execute unless score @s adv.chal_id matches 17 run data modify entity @e[type=text_display,tag=Adv.Chal12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"dark_aqua"},{text:"Explorer",color:"white"},{text:" — Accept",color:"yellow"}]
execute if score @s adv.chal_id matches 17 run data modify entity @e[type=text_display,tag=Adv.Chal12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"dark_aqua"},{text:"Explorer",color:"white"},{text:" — Active",color:"green"}]
