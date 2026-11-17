# La casella #v de la caixa (x, y, z) i la del jugador #me (px), per a les macros
scoreboard players operation #x daisukes.earth = #v daisukes.earth
scoreboard players operation #x daisukes.earth %= #16 daisukes.earth
execute store result storage daisukes:earth v.x int 1 run scoreboard players add #x daisukes.earth 29999008
scoreboard players operation #z daisukes.earth = #v daisukes.earth
scoreboard players operation #z daisukes.earth /= #16 daisukes.earth
scoreboard players operation #z daisukes.earth %= #16 daisukes.earth
execute store result storage daisukes:earth v.z int 1 run scoreboard players add #z daisukes.earth 29999008
scoreboard players operation #y daisukes.earth = #v daisukes.earth
scoreboard players operation #y daisukes.earth /= #256 daisukes.earth
execute store result storage daisukes:earth v.y int 1 run scoreboard players remove #y daisukes.earth 63
scoreboard players operation #x daisukes.earth = #me daisukes.earth
scoreboard players operation #x daisukes.earth %= #16 daisukes.earth
execute store result storage daisukes:earth v.px int 1 run scoreboard players add #x daisukes.earth 29999008
