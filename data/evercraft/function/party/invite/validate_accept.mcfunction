# Validate party invite acceptance (macro)
# Arg: pid (party ID to join)

# Check if party still has online members
$execute store result score #inv_valid ec.temp if entity @a[scores={ec.party_id=$(pid)}]
execute if score #inv_valid ec.temp matches 0 run return run function evercraft:party/invite/accept_fail

# Check if party is full (4 members)
execute if score #inv_valid ec.temp matches 4.. run return run function evercraft:party/invite/accept_full

# Join the party — set party ID now that validation passed
$scoreboard players set @s ec.party_id $(pid)
scoreboard players set @s ec.party_role 2
scoreboard players set @s ec.party_inv 0
scoreboard players set @s ec.party_inv_cd 0
scoreboard players set @s ec.party_inv_from 0
scoreboard players set @s ec.party_ldr_dc 0

# Announce to party
$tellraw @a[scores={ec.party_id=$(pid)}] [{text:"[Party] ",color:"gold"},{selector:"@s",color:"yellow"},{text:" joined the party!",color:"green"}]
playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1.5

# Update party size for all members
$execute as @a[scores={ec.party_id=$(pid)}] store result score @s ec.party_size if entity @a[scores={ec.party_id=$(pid)}]
