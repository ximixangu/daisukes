# Com el jugador, als peus: els blocs que trepitja (#cols), sota el centre i sota les puntes (si cau de cantó). Si no
# n'hi ha cap, mig bloc mes avall (tanques i murs fan 1,5 d'alt). Amb #do 1, a cadascun hi va un marcador (foot)
execute positioned ~ ~-0.01 ~ align xyz unless block ~ ~ ~ #daisukes:heavy_empty run function daisukes:modifiers/heavy/foot
execute positioned ~0.2999 ~-0.01 ~0.2999 align xyz unless block ~ ~ ~ #daisukes:heavy_empty run function daisukes:modifiers/heavy/foot
execute positioned ~0.2999 ~-0.01 ~-0.2999 align xyz unless block ~ ~ ~ #daisukes:heavy_empty run function daisukes:modifiers/heavy/foot
execute positioned ~-0.2999 ~-0.01 ~0.2999 align xyz unless block ~ ~ ~ #daisukes:heavy_empty run function daisukes:modifiers/heavy/foot
execute positioned ~-0.2999 ~-0.01 ~-0.2999 align xyz unless block ~ ~ ~ #daisukes:heavy_empty run function daisukes:modifiers/heavy/foot
execute if score #cols daisukes.weight matches 0 run function daisukes:modifiers/heavy/feet_low
