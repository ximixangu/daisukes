# Sequencia nova per a aquest jugador (cadascu te la seva, i la seva barra a dalt)
execute unless score @s daisukes.rush_id matches 1.. store result score @s daisukes.rush_id run scoreboard players add #ids daisukes.rush 1
execute store result storage daisukes:rush tmp.id int 1 run scoreboard players get @s daisukes.rush_id
# Passos a daisukes:rush gen i temps total (ticks) a #t
data modify storage daisukes:rush gen set value []
execute if score #warm daisukes.rush matches 1 run function daisukes:modifiers/arrow_rush/konami
execute if score #warm daisukes.rush matches 0 run function daisukes:modifiers/arrow_rush/gen/sequence
function daisukes:modifiers/arrow_rush/begin with storage daisukes:rush tmp
