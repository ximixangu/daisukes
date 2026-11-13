# Cada segon (core/tick). Cada modificador que pot deixar restes te una funcio "leftovers" a
# #daisukes:leftovers que, si ell NO esta actiu, treu el que hagi quedat:
#  - entitats que eren en chunks sense carregar quan es va desactivar (lasers, ombres, esquelets...)
#  - jugadors que estaven desconnectats (atributs, vida maxima, petrificats, Hot Potatoes...)
scoreboard players set #leftovers daisukes.timer 0
function #daisukes:leftovers
