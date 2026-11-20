$data modify storage advbar:menu language_choice set value $(value)
execute unless data storage advbar:menu {language_choice:0} unless data storage advbar:menu {language_choice:1} run return 0
data modify storage advbar:settings overrides.language set from storage advbar:menu language_choice
function advbar:config_resolve
execute if score #shown advbar_prev matches 0.. if score #mode advbar_cfg matches 0 run function advbar:progress_show with storage advbar:config labels
execute if score #mode advbar_cfg matches 1 run function advbar:time_show with storage advbar:config labels
execute unless score #shown advbar_prev matches 0.. unless score #mode advbar_cfg matches 1 run function advbar:loading with storage advbar:config labels
function advbar:config_menu
