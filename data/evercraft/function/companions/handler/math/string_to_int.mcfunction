data modify storage evercraft:companions math.char set string storage evercraft:companions math.string 0 1
data modify storage evercraft:companions math.string set string storage evercraft:companions math.string 1

scoreboard players operation #value Pets.Calc *= #10 Pets.Calc
execute if data storage evercraft:companions math{char:'1'} run scoreboard players add #value Pets.Calc 1
execute if data storage evercraft:companions math{char:'2'} run scoreboard players add #value Pets.Calc 2
execute if data storage evercraft:companions math{char:'3'} run scoreboard players add #value Pets.Calc 3
execute if data storage evercraft:companions math{char:'4'} run scoreboard players add #value Pets.Calc 4
execute if data storage evercraft:companions math{char:'5'} run scoreboard players add #value Pets.Calc 5
execute if data storage evercraft:companions math{char:'6'} run scoreboard players add #value Pets.Calc 6
execute if data storage evercraft:companions math{char:'7'} run scoreboard players add #value Pets.Calc 7
execute if data storage evercraft:companions math{char:'8'} run scoreboard players add #value Pets.Calc 8
execute if data storage evercraft:companions math{char:'9'} run scoreboard players add #value Pets.Calc 9

execute unless data storage evercraft:companions math{string:''} run function evercraft:companions/handler/math/string_to_int