# BACAP Bossbar — инициализация (запускается на каждый /reload)
scoreboard objectives add advbar_cfg dummy
scoreboard objectives add advbar_prev dummy
scoreboard objectives add advbar_time dummy
scoreboard players set #phase advbar_cfg 0
scoreboard players set #mode advbar_cfg 0
scoreboard players set #slot advbar_cfg 0
scoreboard players set #showcd advbar_cfg 0
scoreboard players set #shown advbar_prev -1
scoreboard players set #c60 advbar_time 60
scoreboard players set #c1200 advbar_time 1200
scoreboard players set #c24000 advbar_time 24000
bossbar remove minecraft:advancements_progress
bossbar add minecraft:advancements_progress ""
function advbar:config_resolve
execute store result bossbar minecraft:advancements_progress max run scoreboard players get #total advbar_cfg
function advbar:loading with storage advbar:config labels
bossbar set minecraft:advancements_progress players @a
function advbar:setup
