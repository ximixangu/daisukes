# Com al jugador, al centre del bloc on comenca a escalfar: hi porta la seva marca (o en fa una) i comenca de zero
scoreboard players set #tgt daisukes.le 0
scoreboard players set #heat daisukes.le 0
scoreboard players set #found daisukes.le 0
execute as @e[type=minecraft:marker,tag=daisukes.le_spot] if score @s daisukes.le_id = #me daisukes.le store success score #found daisukes.le run tp @s ~ ~ ~
execute if score #found daisukes.le matches 1 run return 0
summon minecraft:marker ~ ~ ~ {Tags:["daisukes.le","daisukes.le_spot","daisukes.le_new"]}
scoreboard players operation @e[type=minecraft:marker,tag=daisukes.le_new] daisukes.le_id = #me daisukes.le
tag @e[type=minecraft:marker,tag=daisukes.le_new] remove daisukes.le_new
