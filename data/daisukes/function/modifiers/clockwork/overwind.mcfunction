# Com al jugador amb la corda plena que encara rep corda: la molla grinyola, cada cop mes aguda; a les dues voltes, es trenca
scoreboard players operation @s daisukes.cw_o += #w daisukes.cw
execute if score @s daisukes.cw_o matches 12000.. run return run function daisukes:modifiers/clockwork/snap
execute if score #clk daisukes.cw matches 0 run return 0
scoreboard players operation #p daisukes.cw = @s daisukes.cw_o
scoreboard players operation #p daisukes.cw /= #12 daisukes.cw
scoreboard players add #p daisukes.cw 600
execute store result storage daisukes:clockwork pitch float 0.001 run scoreboard players get #p daisukes.cw
execute at @s run function daisukes:modifiers/clockwork/fx/creak with storage daisukes:clockwork
