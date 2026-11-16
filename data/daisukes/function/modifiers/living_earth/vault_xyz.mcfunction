# Casella #v de la caixa forta -> daisukes:earth v.vx, v.vy, v.vz
scoreboard players operation #x daisukes.earth = #v daisukes.earth
scoreboard players operation #x daisukes.earth %= #16 daisukes.earth
scoreboard players operation #z daisukes.earth = #v daisukes.earth
scoreboard players operation #z daisukes.earth /= #16 daisukes.earth
scoreboard players operation #z daisukes.earth %= #16 daisukes.earth
scoreboard players operation #y daisukes.earth = #v daisukes.earth
scoreboard players operation #y daisukes.earth /= #256 daisukes.earth
execute store result storage daisukes:earth v.vx int 1 run scoreboard players add #x daisukes.earth 29999008
execute store result storage daisukes:earth v.vz int 1 run scoreboard players add #z daisukes.earth 29999008
execute store result storage daisukes:earth v.vy int 1 run scoreboard players remove #y daisukes.earth 63
