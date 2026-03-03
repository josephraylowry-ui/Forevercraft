# Player Stats — Combat

tellraw @s {text:""}
tellraw @s [{text:"  ⚔ ",color:"red"},{text:"Combat",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Mobs Slain: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_mobs"},color:"white"}]
tellraw @s [{text:"    Patron Kills: ",color:"gray"},{score:{name:"@s",objective:"ach.patron_kills"},color:"gold"}]
tellraw @s [{text:"    Weapon Abilities: ",color:"gray"},{score:{name:"@s",objective:"ach.weapon_abilities"},color:"white"}]
tellraw @s [{text:"    Dodges: ",color:"gray"},{score:{name:"@s",objective:"ach.dodge_count"},color:"white"}]
tellraw @s [{text:"    Dungeons Cleared: ",color:"gray"},{score:{name:"@s",objective:"ach.dungeons_done"},color:"white"}]
tellraw @s [{text:"    Dungeon Best Time: ",color:"gray"},{score:{name:"@s",objective:"dg.best_time_s"},color:"aqua"},{text:"s",color:"aqua"}]
