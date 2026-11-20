# опрос раз в 4 тика — постоянная нагрузка минимальна
scoreboard players add #phase advbar_cfg 1
execute if score #phase advbar_cfg matches 4.. run function advbar:poll
