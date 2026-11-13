# Com a jugador, als seus peus. Columna a l'atzar dins d'un quadrat de 32 blocs a cada banda
execute store result storage daisukes:temp anvil.dx int 1 run random value -32..32
execute store result storage daisukes:temp anvil.dz int 1 run random value -32..32
function daisukes:modifiers/anvil_rain/drop with storage daisukes:temp anvil
