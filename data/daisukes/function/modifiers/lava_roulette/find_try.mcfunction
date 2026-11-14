# Un intent: una columna a l'atzar, fins a 5 blocs en cada direccio
execute store result storage daisukes:lava at.dx int 1 run random value -5..5
execute store result storage daisukes:lava at.dz int 1 run random value -5..5
execute store result score #ok daisukes.lava run function daisukes:modifiers/lava_roulette/find_at with storage daisukes:lava at
execute if score #ok daisukes.lava matches 1 run return 1

scoreboard players remove #tries daisukes.lava 1
execute if score #tries daisukes.lava matches 1.. run return run function daisukes:modifiers/lava_roulette/find_try
return fail
