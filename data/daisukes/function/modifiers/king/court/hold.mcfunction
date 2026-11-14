# Com a corona del Rei, cada mig segon: tots els monstres a menys de 24 blocs (menys el Rei, i menys altres Reis)
# son de la seva cort
tag @s add daisukes.king_now
execute as @e[type=#daisukes:king/court,tag=!daisukes.king,distance=..24] at @s run function daisukes:modifiers/king/court/protect
tag @s remove daisukes.king_now
particle minecraft:wax_on ~ ~0.5 ~ 0.2 0.2 0.2 0 2
