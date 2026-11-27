# Com al jugador: #acc per eix cap a #a (endavant) i #b (esquerra), segons cap on mira: endavant (-sin, cos), esquerra
# (cos, sin)
execute store result score #ang daisukes.jk run data get entity @s Rotation[0] 10
function daisukes:modifiers/jump_king/math/trig
scoreboard players operation #n daisukes.jk = #cos daisukes.jk
scoreboard players operation #n daisukes.jk *= #b daisukes.jk
scoreboard players operation #m daisukes.jk = #sin daisukes.jk
scoreboard players operation #m daisukes.jk *= #a daisukes.jk
scoreboard players operation #n daisukes.jk -= #m daisukes.jk
scoreboard players operation #n daisukes.jk *= #acc daisukes.jk
scoreboard players operation #n daisukes.jk /= #10000 daisukes.jk
scoreboard players operation @s daisukes.jk_vx += #n daisukes.jk
scoreboard players operation #n daisukes.jk = #cos daisukes.jk
scoreboard players operation #n daisukes.jk *= #a daisukes.jk
scoreboard players operation #m daisukes.jk = #sin daisukes.jk
scoreboard players operation #m daisukes.jk *= #b daisukes.jk
scoreboard players operation #n daisukes.jk += #m daisukes.jk
scoreboard players operation #n daisukes.jk *= #acc daisukes.jk
scoreboard players operation #n daisukes.jk /= #10000 daisukes.jk
scoreboard players operation @s daisukes.jk_vz += #n daisukes.jk
