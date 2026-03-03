data merge storage evercraft:treasure/temp {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
$data modify storage evercraft:treasure/main in set value $(UUID)

execute store result score 0= mt.main store result score 1= mt.main run data get storage evercraft:treasure/main in[0]
execute store result storage evercraft:treasure/temp 0 int 1 run scoreboard players operation 0= mt.main %= 256 num
execute store result score 2= mt.main run scoreboard players operation 1= mt.main /= 256 num
execute store result storage evercraft:treasure/temp 1 int 1 run scoreboard players operation 1= mt.main %= 256 num
execute store result score 3= mt.main run scoreboard players operation 2= mt.main /= 256 num
execute store result storage evercraft:treasure/temp 2 int 1 run scoreboard players operation 2= mt.main %= 256 num
execute store result storage evercraft:treasure/temp 3 int 1 run scoreboard players operation 3= mt.main /= 256 num

execute store result score 0= mt.main store result score 1= mt.main run data get storage evercraft:treasure/main in[1]
execute store result storage evercraft:treasure/temp 4 int 1 run scoreboard players operation 0= mt.main %= 256 num
execute store result score 2= mt.main run scoreboard players operation 1= mt.main /= 256 num
execute store result storage evercraft:treasure/temp 5 int 1 run scoreboard players operation 1= mt.main %= 256 num
execute store result score 3= mt.main run scoreboard players operation 2= mt.main /= 256 num
execute store result storage evercraft:treasure/temp 6 int 1 run scoreboard players operation 2= mt.main %= 256 num
execute store result storage evercraft:treasure/temp 7 int 1 run scoreboard players operation 3= mt.main /= 256 num

execute store result score 0= mt.main store result score 1= mt.main run data get storage evercraft:treasure/main in[2]
execute store result storage evercraft:treasure/temp 8 int 1 run scoreboard players operation 0= mt.main %= 256 num
execute store result score 2= mt.main run scoreboard players operation 1= mt.main /= 256 num
execute store result storage evercraft:treasure/temp 9 int 1 run scoreboard players operation 1= mt.main %= 256 num
execute store result score 3= mt.main run scoreboard players operation 2= mt.main /= 256 num
execute store result storage evercraft:treasure/temp a int 1 run scoreboard players operation 2= mt.main %= 256 num
execute store result storage evercraft:treasure/temp b int 1 run scoreboard players operation 3= mt.main /= 256 num

execute store result score 0= mt.main store result score 1= mt.main run data get storage evercraft:treasure/main in[3]
execute store result storage evercraft:treasure/temp c int 1 run scoreboard players operation 0= mt.main %= 256 num
execute store result score 2= mt.main run scoreboard players operation 1= mt.main /= 256 num
execute store result storage evercraft:treasure/temp d int 1 run scoreboard players operation 1= mt.main %= 256 num
execute store result score 3= mt.main run scoreboard players operation 2= mt.main /= 256 num
execute store result storage evercraft:treasure/temp e int 1 run scoreboard players operation 2= mt.main %= 256 num
execute store result storage evercraft:treasure/temp f int 1 run scoreboard players operation 3= mt.main /= 256 num

function evercraft:treasure/database/fetch_uuid/zzz/get_hexes with storage evercraft:treasure/temp
function evercraft:treasure/database/fetch_uuid/zzz/concat_uuid with storage evercraft:treasure/temp