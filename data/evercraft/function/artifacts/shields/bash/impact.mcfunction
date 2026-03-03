# Shield Bash — Impact (runs positioned at raycast endpoint)
# Teleports player here, AoE damage + knockback to nearby mobs

# Teleport player to impact point (drop to ground level)
tp @s ~ ~ ~

# AoE damage to nearby mobs (3 block radius)
# Damage amount is stored in #tk_bash_dmg ec.var by set_tier
# Use execute store to apply variable damage via macro-style approach
# For now, tier-based branching:
execute if score #tk_bash_dmg ec.var matches 3 as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest] run damage @s 3 minecraft:mob_attack
execute if score #tk_bash_dmg ec.var matches 4 as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest] run damage @s 4 minecraft:mob_attack
execute if score #tk_bash_dmg ec.var matches 5 as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest] run damage @s 5 minecraft:mob_attack
execute if score #tk_bash_dmg ec.var matches 6 as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest] run damage @s 6 minecraft:mob_attack
execute if score #tk_bash_dmg ec.var matches 8 as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest] run damage @s 8 minecraft:mob_attack
execute if score #tk_bash_dmg ec.var matches 10 as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest] run damage @s 10 minecraft:mob_attack

# Knockback: push mobs away from player
# KB values: 10=1.0, 13=1.3, 16=1.6, 19=1.9, 22=2.2, 28=2.8 (stored as x10 int)
execute if score #tk_bash_kb ec.var matches 10 at @s as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^-1.0
execute if score #tk_bash_kb ec.var matches 13 at @s as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^-1.3
execute if score #tk_bash_kb ec.var matches 16 at @s as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^-1.6
execute if score #tk_bash_kb ec.var matches 19 at @s as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^-1.9
execute if score #tk_bash_kb ec.var matches 22 at @s as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^-2.2
execute if score #tk_bash_kb ec.var matches 28 at @s as @e[type=!player,type=!item,distance=..3,limit=5,sort=nearest,nbt={hurt_time:10s}] at @s facing entity @p feet run tp @s ^ ^ ^-2.8

# Particles: shield impact explosion
execute at @s run particle explosion ~ ~0.5 ~ 0.5 0.5 0.5 0.1 3
execute at @s run particle sweep_attack ~ ~0.5 ~ 0.5 0.3 0.5 0.1 5
execute at @s run particle crit ~ ~0.8 ~ 0.8 0.5 0.8 0.2 12

# Sound: massive shield slam
execute at @s run playsound minecraft:item.shield.block master @a ~ ~ ~ 1.2 0.5
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.0 0.7
execute at @s run playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 0.6 0.8

# Reset raycast counter
scoreboard players set #rc_steps ec.var 0
