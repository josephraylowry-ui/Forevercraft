# Grove 4-Piece Bonus: Verdant Aura + Harvest Caller
execute unless entity @s[tag=verdant_4pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Grove 4pc: ",color:"light_purple"},{text:"Verdant Aura \u2014 2x crop growth (32b) + Harvest Caller",color:"gray"}]
tag @s add verdant_4pc
function evercraft:artifacts/sets/verdant/grant_ability_item
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force @s
