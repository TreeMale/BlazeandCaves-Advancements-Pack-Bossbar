scoreboard players set #phase advbar_cfg 0
execute as @a[limit=1] if score @s bac_advancements matches 0.. run function advbar:check
