# Com a jugador, als seus peus. A l'atzar al seu voltant, a 2-5 blocs
execute store result storage daisukes:temp junk.yaw int 1 run random value 0..359
execute store result storage daisukes:temp junk.dist int 1 run random value 2..5
function daisukes:modifiers/junk/around_at with storage daisukes:temp junk
