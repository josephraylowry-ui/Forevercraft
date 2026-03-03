# Diagnostic — Show all stat values relevant to the reset/achievement system
# Run after reset_player to check what's going wrong

tellraw @s [{text:"[Diag] ",color:"gold",bold:true},{text:"=== STAT RESET DIAGNOSTICS ===",color:"yellow"}]

# Mining chain
tellraw @s [{text:"  mt.total = ",color:"gray"},{score:{name:"@s",objective:"mt.total"},color:"red"},{text:"  (raw blocks mined from treasure system)",color:"dark_gray"}]
tellraw @s [{text:"  adv.base_mine = ",color:"gray"},{score:{name:"@s",objective:"adv.base_mine"},color:"aqua"},{text:"  (baseline captured at reset)",color:"dark_gray"}]
tellraw @s [{text:"  adv.stat_mine = ",color:"gray"},{score:{name:"@s",objective:"adv.stat_mine"},color:"green"},{text:"  (mt.total - baseline, should be 0 after reset)",color:"dark_gray"}]
tellraw @s [{text:"  ach.blocks_mined = ",color:"gray"},{score:{name:"@s",objective:"ach.blocks_mined"},color:"red"},{text:"  (what achievements check, should be 0 after reset)",color:"dark_gray"}]
tellraw @s [{text:"  #progression = ",color:"gray"},{score:{name:"#progression",objective:"mt.var"},color:"gold"},{text:"  (bonus added to mt.total by treasure system)",color:"dark_gray"}]

# Walking chain
tellraw @s [{text:"  adv.walk_cm = ",color:"gray"},{score:{name:"@s",objective:"adv.walk_cm"},color:"white"},{text:"  adv.base_walk = ",color:"gray"},{score:{name:"@s",objective:"adv.base_walk"},color:"aqua"},{text:"  adv.stat_walk = ",color:"gray"},{score:{name:"@s",objective:"adv.stat_walk"},color:"green"}]

# Fish chain
tellraw @s [{text:"  adv.fish_ct = ",color:"gray"},{score:{name:"@s",objective:"adv.fish_ct"},color:"white"},{text:"  adv.base_fish = ",color:"gray"},{score:{name:"@s",objective:"adv.base_fish"},color:"aqua"},{text:"  adv.stat_fish = ",color:"gray"},{score:{name:"@s",objective:"adv.stat_fish"},color:"green"}]

# Mob kills chain
tellraw @s [{text:"  adv.mob_kills = ",color:"gray"},{score:{name:"@s",objective:"adv.mob_kills"},color:"white"},{text:"  adv.base_mobs = ",color:"gray"},{score:{name:"@s",objective:"adv.base_mobs"},color:"aqua"},{text:"  adv.stat_mobs = ",color:"gray"},{score:{name:"@s",objective:"adv.stat_mobs"},color:"green"}]

tellraw @s [{text:"[Diag] ",color:"gold",bold:true},{text:"=== STATISTICS BASELINES (raw | base | adjusted) ===",color:"yellow"}]
tellraw @s [{text:"  play_ticks = ",color:"gray"},{score:{name:"@s",objective:"ach.play_ticks"},color:"white"},{text:"  base = ",color:"gray"},{score:{name:"@s",objective:"ach.base_play"},color:"aqua"},{text:"  adj = ",color:"gray"},{score:{name:"@s",objective:"ach.adj_play"},color:"green"}]
tellraw @s [{text:"  walk_cm = ",color:"gray"},{score:{name:"@s",objective:"ach.walk_cm"},color:"white"},{text:"  base = ",color:"gray"},{score:{name:"@s",objective:"ach.base_walk"},color:"aqua"},{text:"  adj = ",color:"gray"},{score:{name:"@s",objective:"ach.adj_walk"},color:"green"}]
tellraw @s [{text:"  jumps = ",color:"gray"},{score:{name:"@s",objective:"ach.jumps"},color:"white"},{text:"  base = ",color:"gray"},{score:{name:"@s",objective:"ach.base_jump"},color:"aqua"},{text:"  adj = ",color:"gray"},{score:{name:"@s",objective:"ach.adj_jump"},color:"green"}]
tellraw @s [{text:"  chests_opened = ",color:"gray"},{score:{name:"@s",objective:"ach.chests_opened"},color:"white"},{text:"  base = ",color:"gray"},{score:{name:"@s",objective:"ach.base_chest"},color:"aqua"},{text:"  adj = ",color:"gray"},{score:{name:"@s",objective:"ach.adj_chest"},color:"green"}]

tellraw @s [{text:"[Diag] ",color:"gold",bold:true},{text:"adj = raw - base (computed via copy-then-subtract)",color:"yellow"}]
tellraw @s [{text:"[Diag] ",color:"gold",bold:true},{text:"If base is 0 but raw is high, baselines were never captured",color:"yellow"}]
