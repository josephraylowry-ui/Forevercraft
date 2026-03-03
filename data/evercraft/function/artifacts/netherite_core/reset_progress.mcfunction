# Reset Ancient Netherite Core progress
# Run with: /function evercraft:artifacts/netherite_core/reset_progress

scoreboard players set @s evercraft.nc_blocks 0
tellraw @s {text:"Ancient Netherite Core progress reset to 0!",color:"green"}
