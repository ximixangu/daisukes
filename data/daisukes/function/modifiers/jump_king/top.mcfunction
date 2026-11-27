# Com al jugador que ja baixa: el perdo de la caiguda passa a ser el que ha pujat de debo
tag @s add daisukes.jk_top
scoreboard players operation #n daisukes.jk = @s daisukes.jk_ym
scoreboard players operation #n daisukes.jk -= @s daisukes.jk_y0
execute if score #n daisukes.jk matches ..0 run return run function daisukes:modifiers/jump_king/fall_end
execute store result storage daisukes:jump_king fall.h double 0.01 run scoreboard players get #n daisukes.jk
function daisukes:modifiers/jump_king/fall_set with storage daisukes:jump_king fall
