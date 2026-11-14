# Com a cada jugador, cada mig segon de la celebracio (victory/beat): confeti sempre (tambe sota terra)
# i, una vegada de cada dues, un petard al voltant en una direccio a l'atzar
particle minecraft:totem_of_undying ~ ~2.5 ~ 1.5 0.4 1.5 0.15 5
particle minecraft:firework ~ ~1.2 ~ 1.8 0.8 1.8 0.02 2

execute store result score #roll daisukes.victory run random value 0..1
execute if score #roll daisukes.victory matches 1 store result storage daisukes:temp victory_rocket.yaw int 1 run random value 0..359
execute if score #roll daisukes.victory matches 1 run function daisukes:victory/rocket with storage daisukes:temp victory_rocket
