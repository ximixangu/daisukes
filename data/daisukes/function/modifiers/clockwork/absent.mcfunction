# Com al jugador que torna (de morir, de creatiu, de desconnectar-se) o que entra: corda plena i temps lliure (#free)
scoreboard players set @s daisukes.cw_s 24000
scoreboard players operation @s daisukes.cw_h = #free daisukes.cw
scoreboard players set @s daisukes.cw_o 0
scoreboard players set @s daisukes.cw_c 0
scoreboard players set @s daisukes.cw_t -1
scoreboard players set @s daisukes.cw_v -1
execute store result score @s daisukes.cw_y run data get entity @s Rotation[0] 10
scoreboard players set @s daisukes.cw_wk 0
scoreboard players set @s daisukes.cw_sr 0
scoreboard players set @s daisukes.cw_sw 0
scoreboard players set @s daisukes.cw_j 0
tag @s remove daisukes.cw_ding
function daisukes:modifiers/clockwork/unfreeze
