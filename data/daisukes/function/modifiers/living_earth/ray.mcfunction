scoreboard players add #step daisukes.earth 1
execute if score #step daisukes.earth matches 26.. run return run function daisukes:modifiers/living_earth/aim_none
# Topa amb alguna cosa: torna un pas enrere i hi va a poc a poc (aixi no se salta la cantonada d'un bloc)
execute unless block ~ ~ ~ #daisukes:living_earth/clear positioned ^ ^ ^-0.2 run return run function daisukes:modifiers/living_earth/ray_back
execute positioned ^ ^ ^0.2 run function daisukes:modifiers/living_earth/ray
