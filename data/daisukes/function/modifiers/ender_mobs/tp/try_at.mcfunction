# Macro: {yaw, dist, up}. A la columna triada, al centre del bloc i up blocs per sobre dels peus (com util/teleport,
# que en mira 1): a terra (tp/scan) o a l'aigua (tp/swim)
$execute if score #mode daisukes.em matches 0 rotated $(yaw) 0 positioned ^ ^ ^$(dist) align xyz positioned ~0.5 ~$(up) ~0.5 run function daisukes:modifiers/ender_mobs/tp/scan
$execute if score #mode daisukes.em matches 1 rotated $(yaw) 0 positioned ^ ^ ^$(dist) align xyz positioned ~0.5 ~$(up) ~0.5 run function daisukes:modifiers/ender_mobs/tp/swim
