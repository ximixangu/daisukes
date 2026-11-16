scoreboard players add #fine daisukes.earth 1
execute if score #fine daisukes.earth matches 7.. run return run function daisukes:modifiers/living_earth/aim_none
execute positioned ^ ^ ^0.04 unless block ~ ~ ~ #daisukes:living_earth/clear run return run function daisukes:modifiers/living_earth/aim
execute positioned ^ ^ ^0.04 run function daisukes:modifiers/living_earth/ray_fine
