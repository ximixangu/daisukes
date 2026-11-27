# Com al jugador que s'ha estampat contra el terra: quiet una estona, aixafat, i a poc a poc es refa
scoreboard players operation @s daisukes.jk_st = #splat_t daisukes.jk
attribute @s minecraft:movement_speed modifier remove daisukes:jump_king
attribute @s minecraft:movement_speed modifier add daisukes:jump_king -1 add_multiplied_total
function daisukes:modifiers/jump_king/fx/splat
function daisukes:modifiers/jump_king/fx/stun
