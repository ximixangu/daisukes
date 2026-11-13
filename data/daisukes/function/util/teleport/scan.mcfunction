# Busca on posar-se dret en aquesta columna, de dalt a baix (#h nivells: d'1 per sobre fins a 16 per
# sota dels peus). Com la fruita de chorus, nomes baixa per l'aire, mai a traves de blocs:
# des d'un pilar o un penya-segat cau a terra, pero des d'un tunel no apareix en una cova de sota

# Peus dins d'un bloc: als dos nivells de dalt pot ser el sostre o una paret, i es mira el de sota.
# Mes avall vol dir que la columna es plena: no hi ha lloc
execute unless block ~ ~ ~ #daisukes:teleport/clear if score #h daisukes.tp matches 17.. run return run function daisukes:util/teleport/down
execute unless block ~ ~ ~ #daisukes:teleport/clear run return fail

# Peus a l'aire: si hi cap el cap i el terra l'aguanta (no es liquid, foc, res que faci mal, ni res que
# el deixi caure o l'enfili: tanques, escales, lianes, conreus...), salta aqui
execute if block ~ ~1 ~ #daisukes:teleport/clear unless block ~ ~-1 ~ #daisukes:teleport/no_floor run return run function daisukes:util/teleport/land

# A sota tambe hi ha aire: continua baixant. Si no, el terra no serveix (o no hi cap): no hi ha lloc
execute if block ~ ~-1 ~ #daisukes:teleport/clear run return run function daisukes:util/teleport/down
return fail
