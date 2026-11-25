# Com a marker temporal, a la cantonada de la casella dels peus d'un jugador: les seves coordenades (#x #y #z) i fora
data modify storage daisukes:snake pos set from entity @s Pos
kill @s
execute store result score #x daisukes.sn run data get storage daisukes:snake pos[0]
execute store result score #y daisukes.sn run data get storage daisukes:snake pos[1]
execute store result score #z daisukes.sn run data get storage daisukes:snake pos[2]
