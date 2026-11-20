$data modify storage advbar:menu appearance_values.bar_hex set from storage advbar:menu bar_hex.$(color)
$data modify storage advbar:menu appearance_values.count set from storage advbar:menu divisions.$(style)
$data modify storage advbar:menu appearance_values.heading_color_hex set value "$(heading_color)"
$execute if data storage advbar:menu text_hex."$(heading_color)" run data modify storage advbar:menu appearance_values.heading_color_hex set from storage advbar:menu text_hex."$(heading_color)"
$data modify storage advbar:menu appearance_values.value_color_hex set value "$(value_color)"
$execute if data storage advbar:menu text_hex."$(value_color)" run data modify storage advbar:menu appearance_values.value_color_hex set from storage advbar:menu text_hex."$(value_color)"
$data modify storage advbar:menu appearance_values.detail_color_hex set value "$(detail_color)"
$execute if data storage advbar:menu text_hex."$(detail_color)" run data modify storage advbar:menu appearance_values.detail_color_hex set from storage advbar:menu text_hex."$(detail_color)"
function advbar:appearance/rows with storage advbar:menu appearance_values
