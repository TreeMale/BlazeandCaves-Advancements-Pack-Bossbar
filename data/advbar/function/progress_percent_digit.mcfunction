# Multiply the remainder by ten without overflowing a signed scoreboard value.
scoreboard players operation #pct_gap advbar_cfg = #total advbar_cfg
scoreboard players operation #pct_gap advbar_cfg -= #pct_remainder advbar_cfg
scoreboard players set #pct_acc advbar_cfg 0
scoreboard players set #pct_digit advbar_cfg 0
function advbar:progress_percent_step
function advbar:progress_percent_step
function advbar:progress_percent_step
function advbar:progress_percent_step
function advbar:progress_percent_step
function advbar:progress_percent_step
function advbar:progress_percent_step
function advbar:progress_percent_step
function advbar:progress_percent_step
function advbar:progress_percent_step
scoreboard players operation #pct_remainder advbar_cfg = #pct_acc advbar_cfg
