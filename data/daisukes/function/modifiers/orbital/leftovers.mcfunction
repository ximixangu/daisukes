# Cada segon (core/leftovers), nomes si Orbital no esta actiu: orbes que eren en chunks sense carregar
# i l'etiqueta de "primera orba" de qui estava desconnectat
execute if data storage daisukes:state {active: ["orbital"]} run return 0
kill @e[tag=daisukes.orb]
tag @a remove daisukes.orb_rookie
