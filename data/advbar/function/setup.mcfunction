# Конфиг BACAP — выполняется один раз на мир, /reload его не повторяет
execute unless score #configured advbar_cfg matches 1.. run function advbar:config_once
