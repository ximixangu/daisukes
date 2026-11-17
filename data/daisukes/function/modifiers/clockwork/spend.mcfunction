# Com al jugador: el que gasta aquest tick (quiet 10; caminar i nedar x5/6 per cm; correr x5/3; saltar 400), tot per
# #drain (percentatge) i per #mult (desenes: cada minut, una mes)
scoreboard players set #dr daisukes.cw 10
scoreboard players operation #t daisukes.cw = @s daisukes.cw_wk
scoreboard players operation #t daisukes.cw *= #5 daisukes.cw
scoreboard players operation #t daisukes.cw /= #6 daisukes.cw
scoreboard players operation #dr daisukes.cw += #t daisukes.cw
scoreboard players operation #t daisukes.cw = @s daisukes.cw_sr
scoreboard players operation #t daisukes.cw *= #5 daisukes.cw
scoreboard players operation #t daisukes.cw /= #3 daisukes.cw
scoreboard players operation #dr daisukes.cw += #t daisukes.cw
scoreboard players operation #t daisukes.cw = @s daisukes.cw_sw
scoreboard players operation #t daisukes.cw *= #5 daisukes.cw
scoreboard players operation #t daisukes.cw /= #6 daisukes.cw
scoreboard players operation #dr daisukes.cw += #t daisukes.cw
scoreboard players operation #t daisukes.cw = @s daisukes.cw_j
scoreboard players operation #t daisukes.cw *= #400 daisukes.cw
scoreboard players operation #dr daisukes.cw += #t daisukes.cw
scoreboard players set @s daisukes.cw_wk 0
scoreboard players set @s daisukes.cw_sr 0
scoreboard players set @s daisukes.cw_sw 0
scoreboard players set @s daisukes.cw_j 0
# Durant l'entrada no se'n gasta i el temps lliure no corre (encara no hi ha clau)
execute if score #intro daisukes.cw matches 1.. run return 0
# Plena: no se'n gasta (temps lliure)
execute if score @s daisukes.cw_h matches 1.. run return run function daisukes:modifiers/clockwork/hold
execute if score #dr daisukes.cw matches 10001.. run scoreboard players set #dr daisukes.cw 10000
scoreboard players operation #dr daisukes.cw *= #mult daisukes.cw
scoreboard players operation #dr daisukes.cw *= #drain daisukes.cw
scoreboard players operation #dr daisukes.cw /= #1000 daisukes.cw
scoreboard players operation @s daisukes.cw_s -= #dr daisukes.cw
execute if score @s daisukes.cw_s matches ..-1 run scoreboard players set @s daisukes.cw_s 0
