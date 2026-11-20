scoreboard players set #mode advbar_cfg 0
scoreboard players set #slot advbar_cfg 0
function advbar:progress_percent
$bossbar set minecraft:advancements_progress name [{"text":$(progress),"color":"$(heading_color)"},{"score":{"name":"#shown","objective":"advbar_prev"},"color":"$(value_color)"},{"text":$(out_of),"color":"$(detail_color)"},{"score":{"name":"#total","objective":"advbar_cfg"},"color":"$(value_color)"},{"text":" (","color":"$(detail_color)"},{"score":{"name":"#pct_whole","objective":"advbar_cfg"},"color":"$(value_color)"},{"text":",","color":"$(detail_color)"},{"score":{"name":"#pct_digit","objective":"advbar_cfg"},"color":"$(value_color)"},{"text":"%)","color":"$(detail_color)"}]
