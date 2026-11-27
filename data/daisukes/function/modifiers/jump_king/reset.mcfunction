# Com al jugador: deixa de carregar, de saltar i d'estar estampat
scoreboard players set @s daisukes.jk_c 0
scoreboard players set @s daisukes.jk_t 0
scoreboard players set @s daisukes.jk_st 0
attribute @s minecraft:movement_speed modifier remove daisukes:jump_king
attribute @s minecraft:scale modifier remove daisukes:jump_king
function daisukes:modifiers/jump_king/fall_end
tag @s remove daisukes.jk_lock
tag @s remove daisukes.jk_air
tag @s remove daisukes.jk_top
