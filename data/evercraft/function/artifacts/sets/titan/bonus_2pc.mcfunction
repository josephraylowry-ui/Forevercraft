# Tempest 2-Piece Bonus: Poseidon's Blessing — Conduit Power + Fishing Dream Rate
execute unless entity @s[tag=titan_2pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Tempest 2pc: ",color:"light_purple"},{text:"Poseidon's Blessing — Conduit Power + Fishing Dream Rate",color:"gray"}]
tag @s add titan_2pc
effect give @s conduit_power 3 0 false
# Add +1.0 Fishing Dream Rate (from merged Angler set)
attribute @s luck modifier add titan_2pc_luck 1.0 add_value
