# Cada segon mentre Soul Escape no esta actiu: markers, animes i mobs marcats que eren en chunks sense carregar
execute if data storage daisukes:state {active: ["soul_escape"]} run return 0
function daisukes:modifiers/soul_escape/clear
