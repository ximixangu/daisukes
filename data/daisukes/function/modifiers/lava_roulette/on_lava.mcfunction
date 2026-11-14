# Macro {a, b, act}. Com a jugador a terra: si algun cantó dels peus (hitbox de 0.6) trepitja un bloc triat, li
# passa feet/<act> (sizzle quan surt el bloc, warm durant l'avis, scorch quan crema). Es mira 0.01 per sota dels
# peus: compta el bloc que l'aguanta de debo (lloses, catifes, arena d'animes...)
$execute positioned ~0.29999999 ~-0.01 ~0.29999999 if block ~ ~ ~ $(a) run return run function daisukes:modifiers/lava_roulette/feet/$(act)
$execute positioned ~0.29999999 ~-0.01 ~0.29999999 if block ~ ~ ~ $(b) run return run function daisukes:modifiers/lava_roulette/feet/$(act)
$execute positioned ~-0.29999999 ~-0.01 ~0.29999999 if block ~ ~ ~ $(a) run return run function daisukes:modifiers/lava_roulette/feet/$(act)
$execute positioned ~-0.29999999 ~-0.01 ~0.29999999 if block ~ ~ ~ $(b) run return run function daisukes:modifiers/lava_roulette/feet/$(act)
$execute positioned ~0.29999999 ~-0.01 ~-0.29999999 if block ~ ~ ~ $(a) run return run function daisukes:modifiers/lava_roulette/feet/$(act)
$execute positioned ~0.29999999 ~-0.01 ~-0.29999999 if block ~ ~ ~ $(b) run return run function daisukes:modifiers/lava_roulette/feet/$(act)
$execute positioned ~-0.29999999 ~-0.01 ~-0.29999999 if block ~ ~ ~ $(a) run return run function daisukes:modifiers/lava_roulette/feet/$(act)
$execute positioned ~-0.29999999 ~-0.01 ~-0.29999999 if block ~ ~ ~ $(b) run return run function daisukes:modifiers/lava_roulette/feet/$(act)
