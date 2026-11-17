# Com al jugador: quant ha girat des de l'ultim tick (graus x10, entre -180 i 180)
execute store result score #yaw daisukes.cw run data get entity @s Rotation[0] 10
scoreboard players operation #d daisukes.cw = #yaw daisukes.cw
scoreboard players operation #d daisukes.cw -= @s daisukes.cw_y
scoreboard players operation @s daisukes.cw_y = #yaw daisukes.cw
execute if score #d daisukes.cw matches 1800.. run scoreboard players remove #d daisukes.cw 3600
execute if score #d daisukes.cw matches ..-1800 run scoreboard players add #d daisukes.cw 3600
# Durant l'entrada no compta (encara no li han posat la clau)
execute if score #intro daisukes.cw matches 1.. run return 0
# Cap a la dreta i prou de pressa: dona corda (a ell, i a qui tingui just davant d'esquena)
execute if score #d daisukes.cw matches 80.. run return run function daisukes:modifiers/clockwork/wind
# Si no gira, el que havia girat de mes amb la corda plena s'oblida aviat
scoreboard players remove @s daisukes.cw_o 600
execute if score @s daisukes.cw_o matches ..-1 run scoreboard players set @s daisukes.cw_o 0
