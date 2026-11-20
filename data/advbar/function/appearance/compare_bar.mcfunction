scoreboard players set #distance advbar_cfg 0
$scoreboard players set #difference advbar_cfg $(r)
scoreboard players operation #difference advbar_cfg -= #r advbar_cfg
scoreboard players operation #difference advbar_cfg *= #difference advbar_cfg
scoreboard players operation #distance advbar_cfg += #difference advbar_cfg
$scoreboard players set #difference advbar_cfg $(g)
scoreboard players operation #difference advbar_cfg -= #g advbar_cfg
scoreboard players operation #difference advbar_cfg *= #difference advbar_cfg
scoreboard players operation #distance advbar_cfg += #difference advbar_cfg
$scoreboard players set #difference advbar_cfg $(b)
scoreboard players operation #difference advbar_cfg -= #b advbar_cfg
scoreboard players operation #difference advbar_cfg *= #difference advbar_cfg
scoreboard players operation #distance advbar_cfg += #difference advbar_cfg
execute unless score #distance advbar_cfg < #best_distance advbar_cfg run return 0
scoreboard players operation #best_distance advbar_cfg = #distance advbar_cfg
$data modify storage advbar:settings overrides.appearance.color set value "$(color)"
