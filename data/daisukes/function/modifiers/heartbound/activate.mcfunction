# Heartbound: cada jugador porta un creaking lligat (nomes es mou quan ningu el mira; no pot morir).
# El seu cor es enterrat a prop, dins la roca: batega, i si pegues al creaking unes particules te'l senyalen.
# Desenterra'l i pica'l: el creaking s'esmicola i quedes lliure 20 s. Despres, un altre.
#  daisukes.heart: globals, numero de cada jugador i amo   daisukes.heart_t: temps lliure (jugador), cops (cor), segons lluny (creaking)
#  daisukes.heart_l: l'ultim tick que s'ha vist cada jugador
scoreboard objectives add daisukes.heart dummy
scoreboard objectives add daisukes.heart_t dummy
scoreboard objectives add daisukes.heart_l dummy
scoreboard players set #time daisukes.heart 0
scoreboard players set #now daisukes.heart 0
scoreboard players set #next daisukes.heart 0
scoreboard players set #sec daisukes.heart 0
scoreboard players set #beat daisukes.heart 0
scoreboard players set #40 daisukes.heart 40
# Radi on s'enterra el cor: creix amb el temps
data modify storage daisukes:heart b set value {r: 11}

# Entrada: el bosc palid es desperta al voltant de cadascu
execute as @a at @s run function daisukes:modifiers/heartbound/intro
