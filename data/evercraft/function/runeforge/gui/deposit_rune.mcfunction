# Runeforge — Deposit Rune from mainhand
# Detects which rune the player is holding, consumes it, stores on marker

# Block deposit if forge is in progress or complete
execute if score @s rf.state matches 2..3 run tellraw @s [{text:"The forge is already in use!",color:"red"}]
execute if score @s rf.state matches 2..3 run return 0

# Already have a rune deposited?
execute if score @s rf.rune_id matches 1.. run tellraw @s [{text:"Rune already deposited!",color:"red"}]
execute if score @s rf.rune_id matches 1.. run return 0

# Check each rune type (1-13) and consume
# 1: Ice Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.ice"}}}}] run scoreboard players set @s rf.rune_id 1
execute if score @s rf.rune_id matches 1 run clear @s *[custom_data~{rune:"mt.ice"}] 1
execute if score @s rf.rune_id matches 1 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 1.. run return 1

# 2: Heal Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.heal"}}}}] run scoreboard players set @s rf.rune_id 2
execute if score @s rf.rune_id matches 2 run clear @s *[custom_data~{rune:"mt.heal"}] 1
execute if score @s rf.rune_id matches 2 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 2.. run return 1

# 3: Assassin Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.assassin"}}}}] run scoreboard players set @s rf.rune_id 3
execute if score @s rf.rune_id matches 3 run clear @s *[custom_data~{rune:"mt.assassin"}] 1
execute if score @s rf.rune_id matches 3 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 3.. run return 1

# 4: Black Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.black"}}}}] run scoreboard players set @s rf.rune_id 4
execute if score @s rf.rune_id matches 4 run clear @s *[custom_data~{rune:"mt.black"}] 1
execute if score @s rf.rune_id matches 4 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 4.. run return 1

# 5: End Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.end"}}}}] run scoreboard players set @s rf.rune_id 5
execute if score @s rf.rune_id matches 5 run clear @s *[custom_data~{rune:"mt.end"}] 1
execute if score @s rf.rune_id matches 5 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 5.. run return 1

# 6: Jungle Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.jungle"}}}}] run scoreboard players set @s rf.rune_id 6
execute if score @s rf.rune_id matches 6 run clear @s *[custom_data~{rune:"mt.jungle"}] 1
execute if score @s rf.rune_id matches 6 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 6.. run return 1

# 7: Dripstone Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.dripstone"}}}}] run scoreboard players set @s rf.rune_id 7
execute if score @s rf.rune_id matches 7 run clear @s *[custom_data~{rune:"mt.dripstone"}] 1
execute if score @s rf.rune_id matches 7 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 7.. run return 1

# 8: Piglin Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.piglin"}}}}] run scoreboard players set @s rf.rune_id 8
execute if score @s rf.rune_id matches 8 run clear @s *[custom_data~{rune:"mt.piglin"}] 1
execute if score @s rf.rune_id matches 8 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 8.. run return 1

# 9: Sponge Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.sponge"}}}}] run scoreboard players set @s rf.rune_id 9
execute if score @s rf.rune_id matches 9 run clear @s *[custom_data~{rune:"mt.sponge"}] 1
execute if score @s rf.rune_id matches 9 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 9.. run return 1

# 10: Ally Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.ally"}}}}] run scoreboard players set @s rf.rune_id 10
execute if score @s rf.rune_id matches 10 run clear @s *[custom_data~{rune:"mt.ally"}] 1
execute if score @s rf.rune_id matches 10 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 10.. run return 1

# 11: Reverse Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.reverse"}}}}] run scoreboard players set @s rf.rune_id 11
execute if score @s rf.rune_id matches 11 run clear @s *[custom_data~{rune:"mt.reverse"}] 1
execute if score @s rf.rune_id matches 11 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 11.. run return 1

# 12: Knockchant Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.knockchant"}}}}] run scoreboard players set @s rf.rune_id 12
execute if score @s rf.rune_id matches 12 run clear @s *[custom_data~{rune:"mt.knockchant"}] 1
execute if score @s rf.rune_id matches 12 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 12.. run return 1

# 13: Mysterichant Rune
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{rune:"mt.mysterichant"}}}}] run scoreboard players set @s rf.rune_id 13
execute if score @s rf.rune_id matches 13 run clear @s *[custom_data~{rune:"mt.mysterichant"}] 1
execute if score @s rf.rune_id matches 13 run function evercraft:runeforge/gui/on_deposit
execute if score @s rf.rune_id matches 13.. run return 1

# No valid rune found
tellraw @s [{text:"Hold a rune in your mainhand!",color:"red"}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.5 1.0
