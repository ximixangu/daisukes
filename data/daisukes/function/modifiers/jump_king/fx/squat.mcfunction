# Com al jugador: es fa #s per mil mes petit (0 o menys: la mida de sempre)
attribute @s minecraft:scale modifier remove daisukes:jump_king
execute if score #s daisukes.jk matches ..0 run return 0
execute store result storage daisukes:jump_king fx.s double -0.001 run scoreboard players get #s daisukes.jk
function daisukes:modifiers/jump_king/fx/squat_set with storage daisukes:jump_king fx
