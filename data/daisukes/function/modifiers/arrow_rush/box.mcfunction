# CLICK: caixa invisible que t'envolta (3 x 4 blocs) perque qualsevol clic hi vagi, miris on miris
scoreboard players operation #me daisukes.rush = @s daisukes.rush_id
execute as @e[type=minecraft:interaction,tag=daisukes.rush_box] if score @s daisukes.rush_id = #me daisukes.rush run kill @s
summon minecraft:interaction ~ ~-1 ~ {width: 3f, height: 4f, response: 1b, Tags: ["daisukes.rush_box", "daisukes.rush_seen", "daisukes.rush_new"]}
scoreboard players operation @e[type=minecraft:interaction,tag=daisukes.rush_new] daisukes.rush_id = @s daisukes.rush_id
tag @e[type=minecraft:interaction,tag=daisukes.rush_new] remove daisukes.rush_new
