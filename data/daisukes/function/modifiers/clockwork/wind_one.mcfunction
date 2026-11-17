# Com al jugador que rep corda (#w; #d graus): la clau avanca un pas cada 45 graus, amb un clic
scoreboard players operation @s daisukes.cw_c += #d daisukes.cw
scoreboard players operation #clk daisukes.cw = @s daisukes.cw_c
scoreboard players operation #clk daisukes.cw /= #450 daisukes.cw
scoreboard players operation @s daisukes.cw_c %= #450 daisukes.cw
scoreboard players operation @s daisukes.cw_k += #clk daisukes.cw
scoreboard players operation @s daisukes.cw_k %= #8 daisukes.cw
tag @s add daisukes.cw_wound
# Ja era plena: tot el que giri de mes compta per trencar-la
execute if score @s daisukes.cw_s matches 24000.. run return run function daisukes:modifiers/clockwork/overwind
scoreboard players operation @s daisukes.cw_s += #w daisukes.cw
execute if score @s daisukes.cw_s matches 24000.. at @s run return run function daisukes:modifiers/clockwork/full
execute if score #clk daisukes.cw matches 1.. at @s run function daisukes:modifiers/clockwork/click
