tag @s add Pets.Marker

scoreboard players operation @s Pets.ID = @a[tag=Pets.NewPlayer, limit=1] Pets.ID
data merge entity @s {data:{Pets:[]}}

tag @a remove Pets.NewPlayer