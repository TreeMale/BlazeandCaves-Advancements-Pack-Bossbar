$data modify storage advbar:menu division set value $(value)
execute if data storage advbar:menu {division:0} run data modify storage advbar:settings overrides.appearance.style set value "progress"
execute if data storage advbar:menu {division:6} run data modify storage advbar:settings overrides.appearance.style set value "notched_6"
execute if data storage advbar:menu {division:10} run data modify storage advbar:settings overrides.appearance.style set value "notched_10"
execute if data storage advbar:menu {division:12} run data modify storage advbar:settings overrides.appearance.style set value "notched_12"
execute if data storage advbar:menu {division:20} run data modify storage advbar:settings overrides.appearance.style set value "notched_20"
execute unless data storage advbar:menu {division:0} unless data storage advbar:menu {division:6} unless data storage advbar:menu {division:10} unless data storage advbar:menu {division:12} unless data storage advbar:menu {division:20} run return run function advbar:appearance/division_error
function advbar:appearance/refresh
