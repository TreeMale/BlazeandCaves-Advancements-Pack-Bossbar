scoreboard players set #phase advbar_cfg 0
execute if score #cd advbar_cfg matches 1.. run scoreboard players remove #cd advbar_cfg 1
execute if score #mode advbar_cfg matches 0 run scoreboard players add #slot advbar_cfg 1
execute if score #mode advbar_cfg matches 1 run scoreboard players remove #showcd advbar_cfg 1
execute if score #mode advbar_cfg matches 0 if score #slot advbar_cfg matches 50.. run function advbar:time_show
execute as @a[limit=1] run function advbar:check
