# Cada segon mentre Creeper no esta actiu: markers i mobs marcats que eren en chunks sense carregar
execute if data storage daisukes:state {active: ["mini_creeper"]} run return 0
function daisukes:modifiers/mini_creeper/clear
