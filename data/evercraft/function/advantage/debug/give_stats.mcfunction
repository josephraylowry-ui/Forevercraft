# Debug — Set all stat counters to max requirements (level 25)
scoreboard players set @s adv.stat_walk 100000
scoreboard players set @s adv.stat_place 100000
scoreboard players set @s adv.stat_hit 10000
scoreboard players set @s adv.stat_crouch 50000
scoreboard players set @s adv.stat_food 10000
scoreboard players set @s adv.stat_quests 2500
scoreboard players set @s adv.stat_pets100 25
scoreboard players set @s adv.stat_mobs 50000
scoreboard players set @s adv.stat_fish 50000
scoreboard players set @s adv.stat_mine 1000000
scoreboard players set @s adv.stat_harvest 25000
scoreboard players set @s adv.stat_smelt 50000
scoreboard players set @s adv.stat_struct 2500

# Also give XP levels for testing
experience add @s 1000 levels

tellraw @s [{text:"[Debug] ",color:"yellow"},{text:"All advantage stats set to max + 1000 XP levels",color:"green"}]
