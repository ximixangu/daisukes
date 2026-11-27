# Com al jugador que s'ha picat el cap amb el sostre: ja no puja (despres del cop, cau: -g x 0,98)
scoreboard players set @s daisukes.jk_cy 0
scoreboard players operation @s daisukes.jk_vy = @s daisukes.jk_g
scoreboard players operation @s daisukes.jk_vy *= #-98 daisukes.jk
scoreboard players operation @s daisukes.jk_vy /= #100 daisukes.jk
function daisukes:modifiers/jump_king/fx/ceiling
