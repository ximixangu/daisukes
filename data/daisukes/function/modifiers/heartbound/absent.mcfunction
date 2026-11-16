# Com al jugador que torna (de morir, de creatiu, de desconnectar-se): la seva parella fora, i 20 s de treva
scoreboard players operation #o daisukes.heart = @s daisukes.heart
execute as @e[type=minecraft:creaking,tag=daisukes.heart_creaking] if score @s daisukes.heart = #o daisukes.heart at @s run function daisukes:modifiers/heartbound/crumble
execute as @e[type=minecraft:interaction,tag=daisukes.heart_core] if score @s daisukes.heart = #o daisukes.heart at @s positioned ~ ~0.505 ~ run function daisukes:modifiers/heartbound/unheart
tag @s remove daisukes.heart_bound
scoreboard players set @s daisukes.heart_t 400
