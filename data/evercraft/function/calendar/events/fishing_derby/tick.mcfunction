# Fishing Derby — Tick (1s)
# Sync modifiers, show score on actionbar

# Sync modifier for new joiners
execute as @a run attribute @s luck modifier remove ec_cal_derby
execute as @a run attribute @s luck modifier add ec_cal_derby 0.5 add_value

# Show current score on actionbar for players holding a fishing rod
execute as @a[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] run title @s actionbar [{text:"Derby Score: ",color:"aqua"},{score:{name:"@s",objective:"cal.derby_score"},color:"white",bold:true},{text:" catches",color:"gray"}]
