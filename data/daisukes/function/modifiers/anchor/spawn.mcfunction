# Gir a l'atzar i una mica inclinada, com si s'hagues clavat de cop
execute store result storage daisukes:anchor rot.yaw float 1 run random value 0..359
execute store result storage daisukes:anchor rot.pitch float 1 run random value 7..13
function daisukes:modifiers/anchor/build with storage daisukes:anchor rot
