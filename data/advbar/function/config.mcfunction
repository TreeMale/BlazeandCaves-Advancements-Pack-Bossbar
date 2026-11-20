# Значения по умолчанию. После правки выполните /reload.
# /function advbar:config_menu — переопределения для текущего мира.
# Общий максимум достижений для вашей версии BACAP (положительное число).
scoreboard players set #total advbar_cfg 1260

# Интервалы в секундах при 20 TPS (от 1 до 107374182).
scoreboard players set #poll_seconds advbar_cfg 5
scoreboard players set #progress_seconds advbar_cfg 10
scoreboard players set #time_seconds advbar_cfg 10

# Показывать время мира: 1 — да, 0 — нет.
scoreboard players set #show_time advbar_cfg 1

# Оформление полосы.
data modify storage advbar:config appearance.color set value "blue"
data modify storage advbar:config appearance.style set value "notched_20"

# Подписи. Сохраняйте внешние одинарные и внутренние двойные кавычки.
# Для апострофа внутри подписи используйте \'.
data modify storage advbar:config labels.loading set value '"Загрузка..."'
data modify storage advbar:config labels.progress set value '"Достижения: "'
data modify storage advbar:config labels.out_of set value '" из "'
data modify storage advbar:config labels.day set value '"День "'
data modify storage advbar:config labels.separator set value '" • "'
data modify storage advbar:config labels.played set value '"В игре: "'
data modify storage advbar:config labels.hours set value '" ч."'
data modify storage advbar:config labels.hours_space set value '" ч. "'
data modify storage advbar:config labels.minutes set value '" мин."'

# Цвета текста. Допустимы имена цветов Minecraft и шестнадцатеричные значения.
data modify storage advbar:config labels.heading_color set value "gold"
data modify storage advbar:config labels.value_color set value "aqua"
data modify storage advbar:config labels.detail_color set value "gray"
