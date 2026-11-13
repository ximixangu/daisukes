# Un intent: una columna a l'atzar, entre near i far blocs en qualsevol direccio
execute store result storage daisukes:tp at.yaw int 1 run random value 0..359
$execute store result storage daisukes:tp at.dist int 1 run random value $(near)..$(far)
scoreboard players set #h daisukes.tp 18
function daisukes:util/teleport/try_at with storage daisukes:tp at

scoreboard players remove #tries daisukes.tp 1
$execute if score #done daisukes.tp matches 0 if score #tries daisukes.tp matches 1.. run function daisukes:util/teleport/try {near: $(near), far: $(far)}
