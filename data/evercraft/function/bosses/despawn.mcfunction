# World Boss System — Despawn (timeout after 15 minutes)

# Announce despawn
tellraw @a [{text:"[",color:"dark_gray"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_gray"},{text:"The World Boss has retreated into the shadows...",color:"gray"}]

# Kill boss and minions
kill @e[tag=wb.boss]
kill @e[tag=wb.minion]

# Remove bossbar
bossbar remove evercraft:world_boss

# Reset global state
scoreboard players set #wb_active ec.var 0
scoreboard players set #wb_boss_id ec.var 0
scoreboard players set #wb_phase ec.var 0
scoreboard players set #wb_timer ec.var 0
scoreboard players set #wb_ability_cd ec.var 0

# Clear summoner tag — but do NOT return totem (fight timed out = consumed)
tag @a remove wb.summoner
