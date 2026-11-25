# Toca un mob o un jugador: el raig s'acaba un quart de bloc mes enlla (dins seu) i l'escalfa (el mes proper, si n'hi
# ha mes d'un)
scoreboard players set #kind daisukes.le 2
scoreboard players add #dist daisukes.le 2
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#daisukes:non_mob,tag=!daisukes.le_me,tag=!daisukes.le_ghost,dx=0,dy=0,dz=0,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~0.5 run function daisukes:modifiers/laser_eyes/heat/mob
