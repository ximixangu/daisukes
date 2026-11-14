# Macro {dx, dz}. El terra d'aquesta columna pot ser al nivell dels peus, un bloc mes amunt o un mes avall.
# Si n'hi ha, mark s'executa al centre de la seva cara de dalt
$execute positioned ~$(dx) ~-0.5 ~$(dz) if block ~ ~ ~ #daisukes:lava_roulette/cursable if block ~ ~1 ~ #daisukes:lava_roulette/open align xyz positioned ~0.5 ~1 ~0.5 run return run function daisukes:modifiers/lava_roulette/mark
$execute positioned ~$(dx) ~0.5 ~$(dz) if block ~ ~ ~ #daisukes:lava_roulette/cursable if block ~ ~1 ~ #daisukes:lava_roulette/open align xyz positioned ~0.5 ~1 ~0.5 run return run function daisukes:modifiers/lava_roulette/mark
$execute positioned ~$(dx) ~-1.5 ~$(dz) if block ~ ~ ~ #daisukes:lava_roulette/cursable if block ~ ~1 ~ #daisukes:lava_roulette/open align xyz positioned ~0.5 ~1 ~0.5 run return run function daisukes:modifiers/lava_roulette/mark
return fail
