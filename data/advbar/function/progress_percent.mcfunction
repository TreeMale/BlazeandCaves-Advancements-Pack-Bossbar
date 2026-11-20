# Compute percentage digits with integer long division and round to one decimal place.
scoreboard players operation #pct_whole advbar_cfg = #shown advbar_prev
scoreboard players operation #pct_whole advbar_cfg /= #total advbar_cfg
scoreboard players operation #pct_remainder advbar_cfg = #shown advbar_prev
scoreboard players operation #pct_remainder advbar_cfg %= #total advbar_cfg
scoreboard players set #pct_ten advbar_cfg 10

function advbar:progress_percent_digit
scoreboard players operation #pct_whole advbar_cfg *= #pct_ten advbar_cfg
scoreboard players operation #pct_whole advbar_cfg += #pct_digit advbar_cfg
function advbar:progress_percent_digit
scoreboard players operation #pct_whole advbar_cfg *= #pct_ten advbar_cfg
scoreboard players operation #pct_whole advbar_cfg += #pct_digit advbar_cfg
function advbar:progress_percent_digit

scoreboard players operation #pct_gap advbar_cfg = #total advbar_cfg
scoreboard players operation #pct_gap advbar_cfg -= #pct_remainder advbar_cfg
execute if score #pct_remainder advbar_cfg >= #pct_gap advbar_cfg run scoreboard players add #pct_digit advbar_cfg 1
execute if score #pct_digit advbar_cfg matches 10 run scoreboard players add #pct_whole advbar_cfg 1
execute if score #pct_digit advbar_cfg matches 10 run scoreboard players set #pct_digit advbar_cfg 0
