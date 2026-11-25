# Com a jugador, als seus peus: a quina casella es ara i, si ha canviat de columna, la cua avanca (moved)

# Casella dels peus: un marker a la cantonada del bloc en diu les coordenades (llegir-les del jugador seria llegir tot
# el seu NBT, inventari inclos). 0,2 mes amunt: dret sobre sorra d'animes, fang o un cami (blocs una mica baixos),
# la casella es la de sobre, l'aire, com en un bloc sencer
execute positioned ~ ~0.2 ~ align xyz summon minecraft:marker run function daisukes:modifiers/snake/cell
scoreboard players set #dim daisukes.sn 0
execute if dimension minecraft:the_nether run scoreboard players set #dim daisukes.sn 1
execute if dimension minecraft:the_end run scoreboard players set #dim daisukes.sn 2
# Servidor amb Fahare (sense Fahare la dimensio no existeix i la linia falla sense fer res)
execute if dimension fahare:overworld run scoreboard players set #dim daisukes.sn 3

# Primer cop (o despres de morir o de ser espectador) i canvi de dimensio: comenca aqui, sense cap tros
execute unless entity @s[tag=daisukes.sn_on] run return run function daisukes:modifiers/snake/here
execute unless score @s daisukes.sn_dim = #dim daisukes.sn run return run function daisukes:modifiers/snake/here

# A la mateixa columna (quiet, girant, saltant al mateix lloc, fent un pilar): nomes es guarda l'altura, que es on
# quedara el tros quan en surti
execute if score @s daisukes.sn_x = #x daisukes.sn if score @s daisukes.sn_z = #z daisukes.sn run return run scoreboard players operation @s daisukes.sn_y = #y daisukes.sn

function daisukes:modifiers/snake/moved
