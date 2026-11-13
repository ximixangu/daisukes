# Macro: {dx: blocs, dz: blocs}
# Comença 7 blocs per sobre del jugador, a la columna escollida i centrat al bloc, i va baixant (16 posicions)
scoreboard players set #steps daisukes.bone_voyage 16
$execute positioned ~$(dx) ~7 ~$(dz) align xyz positioned ~0.5 ~ ~0.5 run function daisukes:modifiers/bone_voyage/scan
