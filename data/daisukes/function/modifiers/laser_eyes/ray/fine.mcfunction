# Busca la superficie de la paret de vuite en vuite (8 passos com a molt: el punt d'arribada ja hi era dins). Quan la
# troba, escalfa el punt de just davant (heat/block)
execute unless predicate daisukes:laser_eyes/open positioned ^ ^ ^-0.125 run return run function daisukes:modifiers/laser_eyes/heat/block
scoreboard players add #dist daisukes.le 1
execute positioned ^ ^ ^0.125 run function daisukes:modifiers/laser_eyes/ray/fine
