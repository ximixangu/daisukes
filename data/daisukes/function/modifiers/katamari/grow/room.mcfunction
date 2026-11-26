# Macro: {top, eye, c, e}. Com a jugador, als peus: amb la mida nova, la part de dalt del cap (al mig i a les quatre
# cantonades) i els ulls (al mig i a les cantonades de la seva caixa) han de quedar en lloc lliure
$execute unless block ~ ~$(top) ~ #daisukes:katamari/room run return 0
$execute unless block ~$(c) ~$(top) ~$(c) #daisukes:katamari/room run return 0
$execute unless block ~-$(c) ~$(top) ~$(c) #daisukes:katamari/room run return 0
$execute unless block ~$(c) ~$(top) ~-$(c) #daisukes:katamari/room run return 0
$execute unless block ~-$(c) ~$(top) ~-$(c) #daisukes:katamari/room run return 0
$execute unless block ~ ~$(eye) ~ #daisukes:katamari/room run return 0
$execute unless block ~$(e) ~$(eye) ~$(e) #daisukes:katamari/room run return 0
$execute unless block ~-$(e) ~$(eye) ~$(e) #daisukes:katamari/room run return 0
$execute unless block ~$(e) ~$(eye) ~-$(e) #daisukes:katamari/room run return 0
$execute unless block ~-$(e) ~$(eye) ~-$(e) #daisukes:katamari/room run return 0
scoreboard players set #ok daisukes.km 1
