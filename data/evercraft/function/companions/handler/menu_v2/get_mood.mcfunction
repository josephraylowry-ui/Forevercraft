# Companion Mood — derived from Relationship Points
# Reads #info_rp Pets.Calc (must be set before calling)
# Sets #mood Pets.Calc: 0=Lonely, 1=Wary, 2=Uneasy, 3=Content, 4=Happy, 5=Elated, 6=Overjoyed

# Default: Wary (RP 250-499)
scoreboard players set #mood Pets.Calc 1

# Lonely: RP dangerously low (< 250) — pet feels neglected
execute if score #info_rp Pets.Calc matches ..249 run scoreboard players set #mood Pets.Calc 0

# Uneasy: Friendly bond (500-1249)
execute if score #info_rp Pets.Calc matches 500..1249 run scoreboard players set #mood Pets.Calc 2

# Content: Bonded (1250-2249)
execute if score #info_rp Pets.Calc matches 1250..2249 run scoreboard players set #mood Pets.Calc 3

# Happy: Devoted (2250-3499)
execute if score #info_rp Pets.Calc matches 2250..3499 run scoreboard players set #mood Pets.Calc 4

# Elated: Soulbound (3500-4499)
execute if score #info_rp Pets.Calc matches 3500..4499 run scoreboard players set #mood Pets.Calc 5

# Overjoyed: Eternal Bond (4500+)
execute if score #info_rp Pets.Calc matches 4500.. run scoreboard players set #mood Pets.Calc 6
