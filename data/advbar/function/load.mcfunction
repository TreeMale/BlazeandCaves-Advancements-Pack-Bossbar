# BACAP Bossbar — инициализация (запускается на каждый /reload)
scoreboard objectives add advbar_cfg dummy
scoreboard objectives add advbar_prev dummy
scoreboard objectives add advbar_trig dummy
scoreboard objectives add advbar_time dummy
# тотал сохраняем, если его не меняли вручную командой
execute unless score #total advbar_cfg matches 1.. run scoreboard players set #total advbar_cfg 1260
scoreboard players set #phase advbar_cfg 0
scoreboard players set #cd advbar_cfg 0
scoreboard players set #pending advbar_cfg 0
scoreboard players set #mode advbar_cfg 0
scoreboard players set #slot advbar_cfg 0
scoreboard players set #showcd advbar_cfg 0
scoreboard players set #shown advbar_prev 0
scoreboard players set #c60 advbar_time 60
scoreboard players set #c1200 advbar_time 1200
scoreboard players set #c24 advbar_time 24
scoreboard players set #c24000 advbar_time 24000
bossbar remove minecraft:advancements_progress
bossbar add minecraft:advancements_progress "Загрузка..."
bossbar set minecraft:advancements_progress color blue
bossbar set minecraft:advancements_progress style notched_20
bossbar set minecraft:advancements_progress max 1260
bossbar set minecraft:advancements_progress players @a
bossbar set minecraft:advancements_progress name [{"text":"Загрузка...","color":"aqua"}]
function advbar:setup
