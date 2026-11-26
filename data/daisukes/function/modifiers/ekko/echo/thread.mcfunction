# Un punt del fil cada 0,75 blocs, del jugador cap al seu eco, fins a tocar-lo (o 40 punts, 30 blocs)
particle minecraft:dust{color:[0.33,0.33,1.0],scale:0.5} ~ ~ ~ 0 0 0 0 1
scoreboard players add #n daisukes.ek 1
execute if score #n daisukes.ek matches 40.. run return 0
execute positioned ^ ^ ^0.75 unless entity @e[type=minecraft:mannequin,tag=daisukes.ek_this,distance=..1.1] run function daisukes:modifiers/ekko/echo/thread
