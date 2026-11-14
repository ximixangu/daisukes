# Com a jugador, als seus peus. Brossa a terra: si camina, sobretot cap on va (la recollira sense voler); si no, al voltant
scoreboard players set @s daisukes.junk_drop 0

# Cap on camina, segons les tecles que prem i cap on mira: endavant (+1) o enrere (-1), esquerra (+1) o dreta (-1)
scoreboard players set #junk_f daisukes.math 0
scoreboard players set #junk_l daisukes.math 0
execute if predicate daisukes:junk/forward run scoreboard players add #junk_f daisukes.math 1
execute if predicate daisukes:junk/backward run scoreboard players remove #junk_f daisukes.math 1
execute if predicate daisukes:junk/left run scoreboard players add #junk_l daisukes.math 1
execute if predicate daisukes:junk/right run scoreboard players remove #junk_l daisukes.math 1

# Quiet: al voltant. Caminant: 3 de cada 4 cops davant seu, i l'altre al voltant
execute if score #junk_f daisukes.math matches 0 if score #junk_l daisukes.math matches 0 run return run function daisukes:modifiers/junk/around
execute store result score #junk_r daisukes.math run random value 1..4
execute if score #junk_r daisukes.math matches 1 run return run function daisukes:modifiers/junk/around
function daisukes:modifiers/junk/ahead
