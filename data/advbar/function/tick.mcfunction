# Проверка достижений и переключение надписи используют отдельные таймеры.
execute if score #mode advbar_cfg matches 1 run scoreboard players remove #showcd advbar_cfg 1
execute if score #mode advbar_cfg matches 0 if score #show_time advbar_cfg matches 1 if score #shown advbar_prev matches 0.. run scoreboard players add #slot advbar_cfg 1

scoreboard players add #phase advbar_cfg 1
execute if score #phase advbar_cfg >= #poll_ticks advbar_cfg run function advbar:poll

execute if score #mode advbar_cfg matches 1 if score #showcd advbar_cfg matches ..0 run function advbar:progress_show with storage advbar:config labels
execute if score #mode advbar_cfg matches 0 if score #show_time advbar_cfg matches 1 if score #slot advbar_cfg >= #progress_ticks advbar_cfg run function advbar:time_show with storage advbar:config labels
