# Cada segon (core/leftovers), si Ender Mobs no es actiu: etiquetes dels mobs que eren en chunks sense carregar quan
# es va desactivar
execute if data storage daisukes:state {active: ["ender_mobs"]} run return 0
function daisukes:modifiers/ender_mobs/clear
