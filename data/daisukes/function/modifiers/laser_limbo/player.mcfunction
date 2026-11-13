# Com a jugador. Compte enrere fins al seu proxim laser
scoreboard players remove @s daisukes.laser_cd 1
execute if score @s daisukes.laser_cd matches 1.. run return 0

# Si ja n'hi ha prou a prop, o no trepitja terra (salta, neda, vola), ho torna a provar d'aqui a mig segon
scoreboard players set @s daisukes.laser_cd 10
execute store result score #near daisukes.laser if entity @e[type=block_display,tag=daisukes.laser,distance=..24]
execute if score #near daisukes.laser >= #max daisukes.laser run return 0
execute unless predicate daisukes:laser_limbo/ready run return 0

# Toca: el seguent, d'aqui a 2,5-4,5 s
execute store result score @s daisukes.laser_cd run random value 50..80
function daisukes:modifiers/laser_limbo/spawn
