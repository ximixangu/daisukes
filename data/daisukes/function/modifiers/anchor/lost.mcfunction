tag @s remove daisukes.anchor_m
# Si l'ha desat en un contenidor, es el que te davant (amb un inventari obert no es pot girar el cap): alla deixa de brillar
scoreboard players set #step daisukes.anchor 0
execute anchored eyes positioned ^ ^ ^ run function daisukes:modifiers/anchor/lost_step
function daisukes:modifiers/anchor/mark
