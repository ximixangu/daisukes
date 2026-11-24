# Com a jugador: la casella amb cantonada de baix a #x #y #z (la de dalt, +#d) es prova (pick/try)
execute store result storage daisukes:world_edit try.x int 1 run scoreboard players get #x daisukes.we
execute store result storage daisukes:world_edit try.y int 1 run scoreboard players get #y daisukes.we
execute store result storage daisukes:world_edit try.z int 1 run scoreboard players get #z daisukes.we
scoreboard players operation #x daisukes.we += #d daisukes.we
scoreboard players operation #y daisukes.we += #d daisukes.we
scoreboard players operation #z daisukes.we += #d daisukes.we
execute store result storage daisukes:world_edit try.x2 int 1 run scoreboard players get #x daisukes.we
execute store result storage daisukes:world_edit try.y2 int 1 run scoreboard players get #y daisukes.we
execute store result storage daisukes:world_edit try.z2 int 1 run scoreboard players get #z daisukes.we
function daisukes:modifiers/world_edit/pick/try with storage daisukes:world_edit try
