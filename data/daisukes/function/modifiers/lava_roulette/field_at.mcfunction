# Macro {a, b, fx}: blocs de lava i efecte. En aquest punt, mentre crema, un sostre de lava (dos o tres blocs per
# sobre dels peus) degota. I el terra de lava (al nivell dels peus, un bloc mes amunt o mes avall) fa l'efecte fx
$execute if score #phase daisukes.lava matches 3 positioned ~ ~2.5 ~ if block ~ ~ ~ $(a) if block ~ ~-1 ~ #daisukes:lava_roulette/open align xyz run particle minecraft:dripping_lava ~0.5 ~-0.05 ~0.5 0.3 0 0.3 0 1
$execute if score #phase daisukes.lava matches 3 positioned ~ ~2.5 ~ if block ~ ~ ~ $(b) if block ~ ~-1 ~ #daisukes:lava_roulette/open align xyz run particle minecraft:dripping_lava ~0.5 ~-0.05 ~0.5 0.3 0 0.3 0 1
$execute if score #phase daisukes.lava matches 3 positioned ~ ~3.5 ~ if block ~ ~ ~ $(a) if block ~ ~-1 ~ #daisukes:lava_roulette/open align xyz run particle minecraft:dripping_lava ~0.5 ~-0.05 ~0.5 0.3 0 0.3 0 1
$execute if score #phase daisukes.lava matches 3 positioned ~ ~3.5 ~ if block ~ ~ ~ $(b) if block ~ ~-1 ~ #daisukes:lava_roulette/open align xyz run particle minecraft:dripping_lava ~0.5 ~-0.05 ~0.5 0.3 0 0.3 0 1

$execute positioned ~ ~0.5 ~ if block ~ ~ ~ $(a) if block ~ ~1 ~ #daisukes:lava_roulette/open align xyz positioned ~0.5 ~1 ~0.5 run return run function daisukes:modifiers/lava_roulette/fx/$(fx)
$execute positioned ~ ~0.5 ~ if block ~ ~ ~ $(b) if block ~ ~1 ~ #daisukes:lava_roulette/open align xyz positioned ~0.5 ~1 ~0.5 run return run function daisukes:modifiers/lava_roulette/fx/$(fx)
$execute positioned ~ ~-0.5 ~ if block ~ ~ ~ $(a) if block ~ ~1 ~ #daisukes:lava_roulette/open align xyz positioned ~0.5 ~1 ~0.5 run return run function daisukes:modifiers/lava_roulette/fx/$(fx)
$execute positioned ~ ~-0.5 ~ if block ~ ~ ~ $(b) if block ~ ~1 ~ #daisukes:lava_roulette/open align xyz positioned ~0.5 ~1 ~0.5 run return run function daisukes:modifiers/lava_roulette/fx/$(fx)
$execute positioned ~ ~-1.5 ~ if block ~ ~ ~ $(a) if block ~ ~1 ~ #daisukes:lava_roulette/open align xyz positioned ~0.5 ~1 ~0.5 run return run function daisukes:modifiers/lava_roulette/fx/$(fx)
$execute positioned ~ ~-1.5 ~ if block ~ ~ ~ $(b) if block ~ ~1 ~ #daisukes:lava_roulette/open align xyz positioned ~0.5 ~1 ~0.5 run return run function daisukes:modifiers/lava_roulette/fx/$(fx)
