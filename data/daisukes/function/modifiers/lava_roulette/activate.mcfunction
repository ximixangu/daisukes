scoreboard objectives add daisukes.lava dummy

# =====================================================================
#  CONFIGURACIO (en ticks, 20 = 1 s)
# =====================================================================
# Descans entre tirades
scoreboard players set #rest daisukes.lava 20
# Des que la ruleta tria el bloc fins que comenca a cremar (a la primera tirada, 1 s mes)
scoreboard players set #warn daisukes.lava 60
# Temps que crema
scoreboard players set #burn daisukes.lava 240
# Tirada a partir de la qual en surten 2 blocs alhora
scoreboard players set #double daisukes.lava 3
# El mal es a feet/scorch (1 cor cada mig segon)
# =====================================================================

bossbar add daisukes:lava ""
bossbar set daisukes:lava visible false

# Primera tirada d'aqui a 3 s; mentrestant, l'entrada (intro)
scoreboard players set #phase daisukes.lava 0
scoreboard players set #round daisukes.lava 0
scoreboard players set #t daisukes.lava 60
