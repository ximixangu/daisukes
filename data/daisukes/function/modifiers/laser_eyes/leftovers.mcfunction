# Cada segon (core/leftovers), nomes si Laser Eyes no esta actiu: lasers i marques que eren en chunks sense carregar
# quan es va acabar (o el mon es va tancar amb el modificador actiu), i espectadors que estaven desconnectats
execute if data storage daisukes:state {active: ["laser_eyes"]} run return 0
kill @e[tag=daisukes.le,type=!minecraft:player]
tag @a remove daisukes.le_ghost
tag @a remove daisukes.le_me
