# Un pas del raig (com a jugador, al punt). Si el bloc no es dels que deixa passar (aire, aigua, plantes, torxes...),
# toca una paret. Si un mob o un jugador hi es a menys de mig bloc, el toca. Si no, segueix
scoreboard players add #dist daisukes.le 8
execute unless predicate daisukes:laser_eyes/open run return run function daisukes:modifiers/laser_eyes/ray/wall
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#daisukes:non_mob,tag=!daisukes.le_me,tag=!daisukes.le_ghost,dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 run return run function daisukes:modifiers/laser_eyes/ray/mob
execute if score #specks daisukes.le matches 1 if score #dist daisukes.le matches ..384 run function daisukes:modifiers/laser_eyes/ray/speck
execute if score #dist daisukes.le < #reach daisukes.le positioned ^ ^ ^1 run function daisukes:modifiers/laser_eyes/ray/step
