# Com al jugador en l'aire: la velocitat prevista, #i ticks despres
scoreboard players operation @s daisukes.jk_vy -= @s daisukes.jk_g
scoreboard players operation @s daisukes.jk_vy *= #98 daisukes.jk
scoreboard players operation @s daisukes.jk_vy /= #100 daisukes.jk
scoreboard players operation @s daisukes.jk_vx *= #91 daisukes.jk
scoreboard players operation @s daisukes.jk_vx /= #100 daisukes.jk
scoreboard players operation @s daisukes.jk_vz *= #91 daisukes.jk
scoreboard players operation @s daisukes.jk_vz /= #100 daisukes.jk
scoreboard players remove #i daisukes.jk 1
execute if score #i daisukes.jk matches 1.. run function daisukes:modifiers/jump_king/math/ahead
