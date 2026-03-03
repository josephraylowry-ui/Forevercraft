execute if block ~ ~ ~ barrel run fill ~ ~ ~ ~ ~ ~ air destroy

execute unless entity @s[tag=mt.exquisite_display] unless entity @s[tag=mt.mythical] run kill @e[type=item,distance=..1]

execute on passengers run kill @s
kill @s