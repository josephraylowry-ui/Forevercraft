execute store result score #totems Pets.Calc run clear @a[tag=Pets.TimerOwner] totem_of_undying 0
execute if score #totems Pets.Calc matches 1 run return fail

tellraw @a[tag=Pets.TimerOwner] {text:"Your Emberheart has granted you with a Totem of Undying.", color:"dark_red"}
give @a[tag=Pets.TimerOwner] totem_of_undying 1
# Achievement tracking
scoreboard players add @s ach.pet_abilities 1
