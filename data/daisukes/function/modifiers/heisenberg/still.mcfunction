# Com a jugador quiet. Compte enrere fins al proxim salt
scoreboard players remove @s daisukes.heis_wait 1

# Avis: purpurina de portal al seu voltant durant el mig segon abans de cada salt
execute if score @s daisukes.heis_wait matches ..10 run particle minecraft:portal ~ ~1 ~ 0.3 0.5 0.3 0.5 4

execute if score @s daisukes.heis_wait matches ..0 run function daisukes:modifiers/heisenberg/blink
