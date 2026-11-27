# Com al jugador: s'acaba el salt, i el perdo de la caiguda
scoreboard players set @s daisukes.jk_t 0
tag @s remove daisukes.jk_air
tag @s remove daisukes.jk_top
function daisukes:modifiers/jump_king/fall_end
