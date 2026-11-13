# Cada segon mentre Hot Potato no esta actiu: patates de jugadors que estaven desconnectats, o tirades en chunks sense carregar
execute if data storage daisukes:state {active: ["cursed_potato"]} run return 0
function daisukes:modifiers/cursed_potato/remove_all
