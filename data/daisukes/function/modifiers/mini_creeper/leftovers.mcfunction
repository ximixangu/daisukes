# Cada segon mentre Soul Escape no esta actiu: markers, animes i mobs marcats que eren en chunks sense carregar
execute if data storage daisukes:state {active: ["mini_creeper"]} run return 0
function daisukes:modifiers/mini_creeper/clear
