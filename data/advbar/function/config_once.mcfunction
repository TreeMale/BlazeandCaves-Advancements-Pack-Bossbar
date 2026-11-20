# Даем BACAP секунду на прогрузку, затем отключаем награды и ставим хардкор
schedule function blazeandcave:hardcore_install 20t
schedule function blazeandcave:config/item_rewards_off 20t
schedule function blazeandcave:config/exp_rewards_off 20t
schedule function blazeandcave:config/trophies_off 20t
scoreboard players set #configured advbar_cfg 1
