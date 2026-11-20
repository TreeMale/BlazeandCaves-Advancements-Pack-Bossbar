$function advbar:appearance/parse_hex {value:"$(value)"}
execute unless score #hex_valid advbar_cfg matches 1 run return run function advbar:appearance/hex_error
scoreboard players set #best_distance advbar_cfg 195076
function advbar:appearance/compare_bar {"color":"blue","r":85,"g":85,"b":255}
function advbar:appearance/compare_bar {"color":"red","r":255,"g":85,"b":85}
function advbar:appearance/compare_bar {"color":"green","r":85,"g":255,"b":85}
function advbar:appearance/compare_bar {"color":"yellow","r":255,"g":255,"b":85}
function advbar:appearance/compare_bar {"color":"white","r":255,"g":255,"b":255}
function advbar:appearance/compare_bar {"color":"pink","r":255,"g":85,"b":255}
function advbar:appearance/compare_bar {"color":"purple","r":170,"g":0,"b":170}
function advbar:appearance/refresh
