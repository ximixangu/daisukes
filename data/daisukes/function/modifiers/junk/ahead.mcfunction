# Com a jugador, als seus peus, quan camina (#junk_f i #junk_l de drop). A 3-6 blocs cap on va (5-8 si corre),
# amb un bloc de marge a cada eix: queda al seu cami i la recull en passar-hi
execute store result score #junk_d daisukes.math run random value 3..6
execute if predicate daisukes:junk/sprinting run scoreboard players add #junk_d daisukes.math 2

# En diagonal (endavant o enrere i a un costat alhora), 7/10 a cada eix: que quedi a la mateixa distancia
execute unless score #junk_f daisukes.math matches 0 unless score #junk_l daisukes.math matches 0 run scoreboard players operation #junk_d daisukes.math *= #7 daisukes.junk
execute unless score #junk_f daisukes.math matches 0 unless score #junk_l daisukes.math matches 0 run scoreboard players operation #junk_d daisukes.math /= #10 daisukes.junk

scoreboard players operation #junk_f daisukes.math *= #junk_d daisukes.math
scoreboard players operation #junk_l daisukes.math *= #junk_d daisukes.math
execute store result score #junk_r daisukes.math run random value -1..1
scoreboard players operation #junk_f daisukes.math += #junk_r daisukes.math
execute store result score #junk_r daisukes.math run random value -1..1
scoreboard players operation #junk_l daisukes.math += #junk_r daisukes.math

execute store result storage daisukes:temp junk.forward int 1 run scoreboard players get #junk_f daisukes.math
execute store result storage daisukes:temp junk.left int 1 run scoreboard players get #junk_l daisukes.math
function daisukes:modifiers/junk/ahead_at with storage daisukes:temp junk
