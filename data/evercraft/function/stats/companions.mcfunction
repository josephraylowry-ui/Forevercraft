# Player Stats — Companions

tellraw @s {text:""}
tellraw @s [{text:"  🐾 ",color:"green"},{text:"Companions",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Adopted: ",color:"gray"},{score:{name:"@s",objective:"ach.pets_owned"},color:"white"},{text:" | Bonded: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.pets_bonded"},color:"white"},{text:" | Eternal: ",color:"dark_gray"},{score:{name:"@s",objective:"ach.pets_eternal"},color:"white"}]
tellraw @s [{text:"    Interactions: ",color:"gray"},{score:{name:"@s",objective:"ach.pet_interacts"},color:"white"}]
