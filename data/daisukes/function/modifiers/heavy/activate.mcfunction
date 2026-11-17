# Too Much Chocoflakes (abans Heavyweight): cada caiguda de 2 blocs o mes enfonsa el terra on caus, tants blocs com has caigut. Caus al forat i
# s'enfonsa un altre cop (com a molt 2 cops seguits).
#  daisukes.weight: valors (#...) i, a cada jugador, l'altura d'on va saltar (centesimes de bloc)
#  daisukes.weight_fall: el que porta caigut   daisukes.weight_hits: cops seguits   daisukes.weight_last: tick de l'ultim cop   daisukes.weight_dead: morts
scoreboard objectives add daisukes.weight dummy
scoreboard objectives add daisukes.weight_fall dummy
scoreboard objectives add daisukes.weight_hits dummy
scoreboard objectives add daisukes.weight_last dummy
scoreboard objectives add daisukes.weight_dead deathCount
scoreboard players set #now daisukes.weight 0
scoreboard players set #100 daisukes.weight 100

# Valors (TOO_MUCH_CHOCOFLAKES.md)
#  #min: a partir de quanta caiguda, en centesimes de bloc (200 = 2 blocs)
scoreboard players set #min daisukes.weight 101
#  #depth: com a molt, quants blocs s'enfonsa cada cop
scoreboard players set #depth daisukes.weight 8
#  #chain: cops seguits (caus al forat i s'enfonsa una altra vegada...) abans de parar
scoreboard players set #chain daisukes.weight 2
#  #window: ticks perque el cop seguent compti com a seguit (si no, torna a ser el primer). 60 = 3 s
scoreboard players set #window daisukes.weight 80
#  #margin: si has baixat molt mes del que has caigut (una perla, un teletransport) no compta. En centesimes de bloc
scoreboard players set #margin daisukes.weight 500
#  Volum dels dos sons del cop
data modify storage daisukes:weight sound set value {smash: 0.6, anvil: 0.25}
