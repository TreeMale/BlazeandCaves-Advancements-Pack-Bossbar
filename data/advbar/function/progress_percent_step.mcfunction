execute if score #pct_acc advbar_cfg < #pct_gap advbar_cfg run return run scoreboard players operation #pct_acc advbar_cfg += #pct_remainder advbar_cfg
scoreboard players operation #pct_acc advbar_cfg -= #pct_gap advbar_cfg
scoreboard players add #pct_digit advbar_cfg 1
