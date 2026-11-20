scoreboard players set #pending advbar_cfg 0
scoreboard players set #cd advbar_cfg 2
scoreboard players set #mode advbar_cfg 0
scoreboard players set #slot advbar_cfg 0
execute store result bossbar minecraft:advancements_progress value run scoreboard players get @s bac_advancements
execute store result bossbar minecraft:advancements_progress max run scoreboard players get #total advbar_cfg
bossbar set minecraft:advancements_progress name [{"text":"Достижения: ","color":"gold"},{"score":{"name":"@s","objective":"bac_advancements"},"color":"aqua"},{"text":" из ","color":"gray"},{"score":{"name":"#total","objective":"advbar_cfg"},"color":"aqua"}]
scoreboard players operation #shown advbar_prev = @s bac_advancements
