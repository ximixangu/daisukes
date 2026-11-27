# Com al jugador en ple salt: suma a la velocitat prevista el que l'empeny WASD (com el joc: d'una sola tecla, x 0,98;
# en diagonal, x 0,7071 per eix; ajupit, x 0,294)
scoreboard players set #a daisukes.jk 0
scoreboard players set #b daisukes.jk 0
execute if predicate daisukes:jump_king/forward run scoreboard players add #a daisukes.jk 1
execute if predicate daisukes:jump_king/backward run scoreboard players remove #a daisukes.jk 1
execute if predicate daisukes:jump_king/left run scoreboard players add #b daisukes.jk 1
execute if predicate daisukes:jump_king/right run scoreboard players remove #b daisukes.jk 1
execute if score #a daisukes.jk matches 0 if score #b daisukes.jk matches 0 run return 0
scoreboard players operation #acc daisukes.jk = @s daisukes.jk_acc
execute if predicate daisukes:jump_king/sneaking run return run function daisukes:modifiers/jump_king/math/input_sneak
execute unless score #a daisukes.jk matches 0 unless score #b daisukes.jk matches 0 run return run function daisukes:modifiers/jump_king/math/input_diag
scoreboard players operation #acc daisukes.jk *= #98 daisukes.jk
scoreboard players operation #acc daisukes.jk /= #100 daisukes.jk
function daisukes:modifiers/jump_king/math/input_add
