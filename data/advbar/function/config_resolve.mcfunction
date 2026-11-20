function advbar:config
scoreboard players set #language advbar_cfg 0
function advbar:config_number {"key":"language","min":0,"max":1}
execute if score #language advbar_cfg matches 0 run function advbar:labels_en
function advbar:config_number {"key":"total","min":1,"max":2147483647}
function advbar:config_number {"key":"show_time","min":0,"max":1}
execute if data storage advbar:settings overrides.appearance run data modify storage advbar:config appearance merge from storage advbar:settings overrides.appearance
execute if data storage advbar:settings overrides.labels.heading_color run data modify storage advbar:config labels.heading_color set from storage advbar:settings overrides.labels.heading_color
execute if data storage advbar:settings overrides.labels.value_color run data modify storage advbar:config labels.value_color set from storage advbar:settings overrides.labels.value_color
execute if data storage advbar:settings overrides.labels.detail_color run data modify storage advbar:config labels.detail_color set from storage advbar:settings overrides.labels.detail_color
function advbar:config_appearance with storage advbar:config appearance
scoreboard players set #ticks_per_second advbar_cfg 20
function advbar:config_number {"key":"poll_seconds","min":1,"max":107374182}
scoreboard players operation #poll_ticks advbar_cfg = #poll_seconds advbar_cfg
scoreboard players operation #poll_ticks advbar_cfg *= #ticks_per_second advbar_cfg
function advbar:config_number {"key":"progress_seconds","min":1,"max":107374182}
scoreboard players operation #progress_ticks advbar_cfg = #progress_seconds advbar_cfg
scoreboard players operation #progress_ticks advbar_cfg *= #ticks_per_second advbar_cfg
function advbar:config_number {"key":"time_seconds","min":1,"max":107374182}
scoreboard players operation #time_ticks advbar_cfg = #time_seconds advbar_cfg
scoreboard players operation #time_ticks advbar_cfg *= #ticks_per_second advbar_cfg
