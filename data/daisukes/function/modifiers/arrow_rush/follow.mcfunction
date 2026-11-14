scoreboard players operation #me daisukes.rush = @s daisukes.rush_id
execute as @e[type=minecraft:interaction,tag=daisukes.rush_box] if score @s daisukes.rush_id = #me daisukes.rush run tp @s ~ ~-1 ~
execute as @e[type=minecraft:interaction,tag=daisukes.rush_box] if score @s daisukes.rush_id = #me daisukes.rush run tag @s add daisukes.rush_seen
