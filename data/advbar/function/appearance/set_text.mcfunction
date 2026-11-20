$function advbar:appearance/parse_hex {value:"$(value)"}
execute unless score #hex_valid advbar_cfg matches 1 run return run function advbar:appearance/hex_error
$data modify storage advbar:settings overrides.labels.$(key) set value "$(value)"
function advbar:appearance/refresh
