# Com al mob o jugador encarat, al centre del bloc dels seus peus. Un mob s'encen de cop (fire/ignite), tambe si vola
# o te el jugador enganxat. Un jugador no es pot encendre amb ordres: li surt foc als peus, o un bloc mes amunt si als
# peus no n'hi pot haver (llosa, catifa, cami, terra de conreu...). El drac i el wither no cremen: nomes foc als peus
execute if entity @s[type=!minecraft:player,type=!minecraft:ender_dragon,type=!minecraft:wither] run return run function daisukes:modifiers/laser_eyes/fire/ignite
execute unless block ~ ~ ~ #daisukes:laser_eyes/kindling unless block ~ ~ ~ #minecraft:fire positioned ~ ~1 ~ run return run function daisukes:modifiers/laser_eyes/fire/place
function daisukes:modifiers/laser_eyes/fire/place
