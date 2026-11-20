tellraw @s [{"text":"                                             ","color":"dark_gray","strikethrough":true}]
execute if score #language advbar_cfg matches 0 run tellraw @s [{"text":" Colors and appearance","color":"gray"}]
execute if score #language advbar_cfg matches 1 run tellraw @s [{"text":" Цвета и оформление","color":"gray"}]
tellraw @s [{"text":"                                             ","color":"dark_gray","strikethrough":true}]
data modify storage advbar:menu bar_hex set value {"blue":"#5555FF","red":"#FF5555","green":"#55FF55","yellow":"#FFFF55","white":"#FFFFFF","pink":"#FF55FF","purple":"#AA00AA"}
data modify storage advbar:menu text_hex set value {"black":"#000000","dark_blue":"#0000AA","dark_green":"#00AA00","dark_aqua":"#00AAAA","dark_red":"#AA0000","dark_purple":"#AA00AA","gold":"#FFAA00","gray":"#AAAAAA","dark_gray":"#555555","blue":"#5555FF","green":"#55FF55","aqua":"#55FFFF","red":"#FF5555","light_purple":"#FF55FF","yellow":"#FFFF55","white":"#FFFFFF"}
data modify storage advbar:menu divisions set value {"progress":0,"notched_6":6,"notched_10":10,"notched_12":12,"notched_20":20}
data modify storage advbar:menu appearance_values set from storage advbar:config appearance
data modify storage advbar:menu appearance_values merge from storage advbar:config labels
function advbar:appearance/current with storage advbar:menu appearance_values
function advbar:config_menu_back
