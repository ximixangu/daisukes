# Cada segon (core/leftovers), si Pumpkin Head no es actiu: les carbasses que tornen (jugadors que estaven
# desconnectats, objectes que eren en chunks sense carregar)
execute if data storage daisukes:state {active: ["pumpkin_head"]} run return 0
function daisukes:modifiers/pumpkin_head/clear
