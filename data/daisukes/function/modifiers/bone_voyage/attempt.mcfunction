# Una temptativa: una columna a l'atzar (X i Z) dins d'un quadrat de 32 blocs a cada banda del jugador
execute store result storage daisukes:temp bone_voyage.dx int 1 run random value -32..32
execute store result storage daisukes:temp bone_voyage.dz int 1 run random value -32..32
function daisukes:modifiers/bone_voyage/column with storage daisukes:temp bone_voyage

# Si no ha sortit cap esquelet, es torna a provar fins que s'acabin les temptatives
scoreboard players remove #tries daisukes.bone_voyage 1
execute if score #spawned daisukes.bone_voyage matches 0 if score #tries daisukes.bone_voyage matches 1.. run function daisukes:modifiers/bone_voyage/attempt
