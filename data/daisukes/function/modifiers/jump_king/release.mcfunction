# Com al jugador que deixa anar el salt (o arriba a la carrega plena): salta
function daisukes:modifiers/jump_king/frac
function daisukes:modifiers/jump_king/cancel
# Si encara te el salt premut (carrega plena), no en carrega un altre fins que el deixi anar
execute if predicate daisukes:jump_king/jump run tag @s add daisukes.jk_lock
# Si mentrestant una altra cosa li ha tret el salt (arrels, rellotge...), no salta
function daisukes:modifiers/jump_king/jump_ok
execute if score #j daisukes.jk matches ..0 run return 0

# #v amunt i #h de costat (deumilesimes), de mes poc a mes segons la carrega
scoreboard players operation #v daisukes.jk = #v_max daisukes.jk
scoreboard players operation #v daisukes.jk -= #v_min daisukes.jk
scoreboard players operation #v daisukes.jk *= #c daisukes.jk
scoreboard players operation #v daisukes.jk /= #10 daisukes.jk
scoreboard players operation #n daisukes.jk = #v_min daisukes.jk
scoreboard players operation #n daisukes.jk *= #100 daisukes.jk
scoreboard players operation #v daisukes.jk += #n daisukes.jk
scoreboard players operation #h daisukes.jk = #h_max daisukes.jk
scoreboard players operation #h daisukes.jk -= #h_min daisukes.jk
scoreboard players operation #h daisukes.jk *= #c daisukes.jk
scoreboard players operation #h daisukes.jk /= #10 daisukes.jk
scoreboard players operation #n daisukes.jk = #h_min daisukes.jk
scoreboard players operation #n daisukes.jk *= #100 daisukes.jk
scoreboard players operation #h daisukes.jk += #n daisukes.jk
# Amunt, com el salt de sempre: segons la forca de salt (Clockwork, Katamari...; fins a 3 cops la normal) i a la
# meitat sobre la mel
execute if score #j daisukes.jk matches 12598.. run scoreboard players set #j daisukes.jk 12597
scoreboard players operation #v daisukes.jk *= #j daisukes.jk
scoreboard players operation #v daisukes.jk /= #4199 daisukes.jk
execute if block ~ ~ ~ minecraft:honey_block run scoreboard players operation #v daisukes.jk /= #2 daisukes.jk
execute unless block ~ ~ ~ minecraft:honey_block if block ~ ~-0.5 ~ minecraft:honey_block run scoreboard players operation #v daisukes.jk /= #2 daisukes.jk
# Direccio de WASD respecte d'on mira: #a endavant (-1 enrere) i #b a l'esquerra (-1 a la dreta). Sense cap, recte
# amunt
scoreboard players set #a daisukes.jk 0
scoreboard players set #b daisukes.jk 0
execute if predicate daisukes:jump_king/forward run scoreboard players add #a daisukes.jk 1
execute if predicate daisukes:jump_king/backward run scoreboard players remove #a daisukes.jk 1
execute if predicate daisukes:jump_king/left run scoreboard players add #b daisukes.jk 1
execute if predicate daisukes:jump_king/right run scoreboard players remove #b daisukes.jk 1
execute unless score #a daisukes.jk matches 0 unless score #b daisukes.jk matches 0 run function daisukes:modifiers/jump_king/math/diagonal
scoreboard players operation #hf daisukes.jk = #h daisukes.jk
scoreboard players operation #hf daisukes.jk *= #a daisukes.jk
scoreboard players operation #hl daisukes.jk = #h daisukes.jk
scoreboard players operation #hl daisukes.jk *= #b daisukes.jk
function daisukes:modifiers/jump_king/launch
function daisukes:modifiers/jump_king/fx/launch
