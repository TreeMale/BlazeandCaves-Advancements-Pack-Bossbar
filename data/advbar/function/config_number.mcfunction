$execute if data storage advbar:settings overrides.$(key) store result score #setting_input advbar_cfg run data get storage advbar:settings overrides.$(key)
$execute if data storage advbar:settings overrides.$(key) if score #setting_input advbar_cfg matches $(min)..$(max) run scoreboard players operation #$(key) advbar_cfg = #setting_input advbar_cfg
