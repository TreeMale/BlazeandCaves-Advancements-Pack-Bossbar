scoreboard players set #hex_digit advbar_cfg -1
execute if data storage advbar:menu {digit:"0"} run scoreboard players set #hex_digit advbar_cfg 0
execute if data storage advbar:menu {digit:"1"} run scoreboard players set #hex_digit advbar_cfg 1
execute if data storage advbar:menu {digit:"2"} run scoreboard players set #hex_digit advbar_cfg 2
execute if data storage advbar:menu {digit:"3"} run scoreboard players set #hex_digit advbar_cfg 3
execute if data storage advbar:menu {digit:"4"} run scoreboard players set #hex_digit advbar_cfg 4
execute if data storage advbar:menu {digit:"5"} run scoreboard players set #hex_digit advbar_cfg 5
execute if data storage advbar:menu {digit:"6"} run scoreboard players set #hex_digit advbar_cfg 6
execute if data storage advbar:menu {digit:"7"} run scoreboard players set #hex_digit advbar_cfg 7
execute if data storage advbar:menu {digit:"8"} run scoreboard players set #hex_digit advbar_cfg 8
execute if data storage advbar:menu {digit:"9"} run scoreboard players set #hex_digit advbar_cfg 9
execute if data storage advbar:menu {digit:"A"} run scoreboard players set #hex_digit advbar_cfg 10
execute if data storage advbar:menu {digit:"B"} run scoreboard players set #hex_digit advbar_cfg 11
execute if data storage advbar:menu {digit:"C"} run scoreboard players set #hex_digit advbar_cfg 12
execute if data storage advbar:menu {digit:"D"} run scoreboard players set #hex_digit advbar_cfg 13
execute if data storage advbar:menu {digit:"E"} run scoreboard players set #hex_digit advbar_cfg 14
execute if data storage advbar:menu {digit:"F"} run scoreboard players set #hex_digit advbar_cfg 15
execute if data storage advbar:menu {digit:"a"} run scoreboard players set #hex_digit advbar_cfg 10
execute if data storage advbar:menu {digit:"b"} run scoreboard players set #hex_digit advbar_cfg 11
execute if data storage advbar:menu {digit:"c"} run scoreboard players set #hex_digit advbar_cfg 12
execute if data storage advbar:menu {digit:"d"} run scoreboard players set #hex_digit advbar_cfg 13
execute if data storage advbar:menu {digit:"e"} run scoreboard players set #hex_digit advbar_cfg 14
execute if data storage advbar:menu {digit:"f"} run scoreboard players set #hex_digit advbar_cfg 15
execute if score #hex_digit advbar_cfg matches -1 run scoreboard players set #hex_valid advbar_cfg 0
