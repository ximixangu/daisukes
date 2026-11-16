# Heartbound: cada jugador porta un creaking lligat durant tot el modificador (nomes es mou quan ningu el mira).
# No pot morir, el segueix sempre (si es queda enrere, torna a sortir darrere seu) i va un 50 % mes rapid i fa un 50 % mes de mal.
#  daisukes.heart: globals, numero de cada jugador i del seu creaking   daisukes.heart_t: temps fins que surt (jugador), segons lluny (creaking)
#  daisukes.heart_l: l'ultim tick que s'ha vist cada jugador
scoreboard objectives add daisukes.heart dummy
scoreboard objectives add daisukes.heart_t dummy
scoreboard objectives add daisukes.heart_l dummy
scoreboard players set #now daisukes.heart 0
scoreboard players set #next daisukes.heart 0
scoreboard players set #sec daisukes.heart 0
scoreboard players set #40 daisukes.heart 40

# Entrada: el bosc palid es desperta al voltant de cadascu
execute as @a at @s run function daisukes:modifiers/heartbound/intro
