scoreboard players set #hex_valid advbar_cfg 0
$data modify storage advbar:menu hex set value "$(value)"
execute store result score #hex_len advbar_cfg run data get storage advbar:menu hex
execute unless score #hex_len advbar_cfg matches 7 run return 0
data modify storage advbar:menu hex_prefix set string storage advbar:menu hex 0 1
execute unless data storage advbar:menu {hex_prefix:"#"} run return 0
scoreboard players set #hex_valid advbar_cfg 1
scoreboard players set #hex_base advbar_cfg 16
data modify storage advbar:menu digit set string storage advbar:menu hex 1 2
function advbar:appearance/hex_digit
scoreboard players operation #r advbar_cfg = #hex_digit advbar_cfg
scoreboard players operation #r advbar_cfg *= #hex_base advbar_cfg
data modify storage advbar:menu digit set string storage advbar:menu hex 2 3
function advbar:appearance/hex_digit
scoreboard players operation #r advbar_cfg += #hex_digit advbar_cfg
data modify storage advbar:menu digit set string storage advbar:menu hex 3 4
function advbar:appearance/hex_digit
scoreboard players operation #g advbar_cfg = #hex_digit advbar_cfg
scoreboard players operation #g advbar_cfg *= #hex_base advbar_cfg
data modify storage advbar:menu digit set string storage advbar:menu hex 4 5
function advbar:appearance/hex_digit
scoreboard players operation #g advbar_cfg += #hex_digit advbar_cfg
data modify storage advbar:menu digit set string storage advbar:menu hex 5 6
function advbar:appearance/hex_digit
scoreboard players operation #b advbar_cfg = #hex_digit advbar_cfg
scoreboard players operation #b advbar_cfg *= #hex_base advbar_cfg
data modify storage advbar:menu digit set string storage advbar:menu hex 6 7
function advbar:appearance/hex_digit
scoreboard players operation #b advbar_cfg += #hex_digit advbar_cfg
