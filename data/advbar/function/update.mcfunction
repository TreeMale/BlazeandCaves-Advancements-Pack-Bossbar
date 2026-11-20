scoreboard players operation #shown advbar_prev = @s bac_advancements
execute store result bossbar minecraft:advancements_progress value run scoreboard players get #shown advbar_prev
function advbar:progress_show with storage advbar:config labels
