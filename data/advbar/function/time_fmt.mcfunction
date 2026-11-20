# Полное время мира в тиках
execute store result score #gt advbar_time run time query gametime

# Наигранное время: тики -> минуты
scoreboard players operation #tm advbar_time = #gt advbar_time
scoreboard players operation #tm advbar_time /= #c1200 advbar_time

# Остаток минут
scoreboard players operation #rm advbar_time = #tm advbar_time
scoreboard players operation #rm advbar_time %= #c60 advbar_time

# Общее количество часов: минуты / 60
scoreboard players operation #th advbar_time = #tm advbar_time
scoreboard players operation #th advbar_time /= #c60 advbar_time

# Игровые дни мира: полное время / 24000 + 1
scoreboard players operation #days advbar_time = #gt advbar_time
scoreboard players operation #days advbar_time /= #c24000 advbar_time
scoreboard players add #days advbar_time 1
