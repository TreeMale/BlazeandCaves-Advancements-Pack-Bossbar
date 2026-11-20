# дельта: сдвинулся ли счетчик достижений с последнего показа
scoreboard players operation @s advbar_trig = @s bac_advancements
scoreboard players operation @s advbar_trig -= #shown advbar_prev
execute if score @s advbar_trig matches 1.. run scoreboard players set #pending advbar_cfg 1
execute if score @s advbar_trig matches 1.. run scoreboard players set #slot advbar_cfg 0
# показ строки достижений: новое достижение или возврат из слота времени
execute if score #pending advbar_cfg matches 1 if score #cd advbar_cfg matches ..0 run function advbar:update
execute if score #mode advbar_cfg matches 1 if score #showcd advbar_cfg matches ..0 run function advbar:update
