# Com al jugador en ple salt: la velocitat prevista, un tick despres. El control de sempre (WASD: jk_acc per tick; en
# l'aire, 0,02, o 0,026 corrent), i despres cau i l'aire el frena (el primer tick, el terra)
execute if score @s daisukes.jk_fr matches 910 run scoreboard players set @s daisukes.jk_acc 200
execute if score @s daisukes.jk_fr matches 910 if predicate daisukes:jump_king/sprinting run scoreboard players set @s daisukes.jk_acc 260
function daisukes:modifiers/jump_king/math/input
scoreboard players operation @s daisukes.jk_vy -= @s daisukes.jk_g
scoreboard players operation @s daisukes.jk_vy *= #98 daisukes.jk
scoreboard players operation @s daisukes.jk_vy /= #100 daisukes.jk
scoreboard players operation @s daisukes.jk_vx *= @s daisukes.jk_fr
scoreboard players operation @s daisukes.jk_vx /= #1000 daisukes.jk
scoreboard players operation @s daisukes.jk_vz *= @s daisukes.jk_fr
scoreboard players operation @s daisukes.jk_vz /= #1000 daisukes.jk
scoreboard players set @s daisukes.jk_fr 910
