# Com al jugador que carrega. Si ja no pot (no toca a terra, munta, aigua...), es desfa sense saltar
execute unless predicate daisukes:jump_king/can_charge run return run function daisukes:modifiers/jump_king/cancel
execute unless predicate daisukes:jump_king/jump run return run function daisukes:modifiers/jump_king/release
scoreboard players add @s daisukes.jk_c 1
execute if score @s daisukes.jk_c >= #max daisukes.jk if score #auto daisukes.jk matches 1 run return run function daisukes:modifiers/jump_king/release
execute if score @s daisukes.jk_c > #max daisukes.jk run scoreboard players operation @s daisukes.jk_c = #max daisukes.jk
function daisukes:modifiers/jump_king/fx/charge
