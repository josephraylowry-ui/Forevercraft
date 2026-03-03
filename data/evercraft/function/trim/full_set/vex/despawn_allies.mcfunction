# Kill all vex allies that have been marked for death
execute as @e[type=vex,tag=vex_ally_dying] at @s run particle minecraft:poof ~ ~ ~ 0.3 0.3 0.3 0.05 10
execute as @e[type=vex,tag=vex_ally_dying] at @s run playsound minecraft:entity.vex.death hostile @a ~ ~ ~ 0.5 1.2
kill @e[type=vex,tag=vex_ally_dying]
