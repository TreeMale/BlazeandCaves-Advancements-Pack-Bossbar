# Настроить BACAP один раз для мира, после его инициализации.
execute if score #configured advbar_cfg matches 1.. run return 0
function blazeandcave:config/item_rewards_off
function blazeandcave:config/exp_rewards_off
function blazeandcave:config/trophies_off
scoreboard players set #configured advbar_cfg 1
