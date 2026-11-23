# Cada segon (core/leftovers), si Tanks no es actiu: fora les mines i el fre de girar que hagin quedat
execute if data storage daisukes:state {active: ["tank"]} run return 0
function daisukes:modifiers/tank/clear
