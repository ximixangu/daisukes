# Cada segon mentre Overcharge no esta actiu: markers, mobs marcats i creepers carregats que eren en chunks sense
# carregar
execute if data storage daisukes:state {active: ["overcharge"]} run return 0
function daisukes:modifiers/overcharge/clear
