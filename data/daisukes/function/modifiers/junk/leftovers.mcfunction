# Cada segon mentre Junk Magnet no esta actiu: brossa de jugadors que estaven desconnectats, o a terra en chunks sense carregar
execute if data storage daisukes:state {active: ["junk"]} run return 0
function daisukes:modifiers/junk/remove_all
