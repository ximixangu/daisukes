# Com al jugador que no juga (creatiu, espectador): la seva barra no es veu
execute store result storage daisukes:clockwork n int 1 run scoreboard players get @s daisukes.cw
function daisukes:modifiers/clockwork/bar/hide with storage daisukes:clockwork
