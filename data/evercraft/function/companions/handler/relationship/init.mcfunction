# Initialize relationship data for a new pet
# Called when pet is first added to database
# Sets starting RP to 500 (Friendly level)

# Add relationship property to pet NBT
# Properties[4] = relationship points
# Properties[5] = last interaction gametime
data modify entity @s item.components."minecraft:profile".properties append value {name:"relationship",value:"500"}
data modify entity @s item.components."minecraft:profile".properties append value {name:"last_interact",value:"0"}
data modify entity @s item.components."minecraft:profile".properties append value {name:"memories",value:"0"}
