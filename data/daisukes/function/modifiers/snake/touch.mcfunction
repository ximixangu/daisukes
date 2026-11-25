# Com a jugador viu, als seus peus: toca alguna cua? (un tros que ja fa mal, de qualsevol jugador, el seu inclos).
# Despres d'una mossegada, #cooldown ticks sense cap altra. En creatiu no fan mal
execute if score @s daisukes.sn_cd matches 1.. run return run scoreboard players remove @s daisukes.sn_cd 1
execute if entity @s[gamemode=creative] run return 0
tag @s add daisukes.sn_me
# Candidats: trossos amb el centre a menys de 2,2 blocs del centre del jugador (aqui, cantonada respecte a peus + mig
# bloc). En toca un si la caixa del jugador (la de debo, ajupit o nedant tambe) entra a la seva casella: dx=0 des de
# la cantonada es el bloc sencer. Mossega el mes proper, i prou
execute positioned ~-0.5 ~0.4 ~-0.5 as @e[type=minecraft:block_display,tag=daisukes.sn_armed,scores={daisukes.sn_id=1..},distance=..2.2,sort=nearest] at @s if entity @a[tag=daisukes.sn_me,dx=0,dy=0,dz=0] run return run function daisukes:modifiers/snake/bite
tag @s remove daisukes.sn_me
