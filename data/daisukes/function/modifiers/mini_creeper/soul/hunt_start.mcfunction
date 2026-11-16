# Comenca (o torna) a voltar el seu jugador: es llancara d'aqui a 1,25-3 s. Gira cap a un costat a l'atzar
tag @s remove daisukes.soul_launch
tag @s remove daisukes.soul_strike
tag @s remove daisukes.soul_ccw
tag @s add daisukes.soul_hunt
execute store result score @s daisukes.soul run random value -60..-25
execute store result score #r daisukes.soul run random value 0..1
execute if score #r daisukes.soul matches 1 run tag @s add daisukes.soul_ccw
