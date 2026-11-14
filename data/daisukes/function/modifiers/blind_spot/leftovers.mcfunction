# Cada segon (core/leftovers), nomes si Blind Spot no esta actiu: el que era en chunks que no estaven carregats
execute if data storage daisukes:state {active: ["blind_spot"]} run return 0
kill @e[type=minecraft:marker,tag=daisukes.bspot]
kill @e[type=minecraft:marker,tag=daisukes.bspot_probe]
kill @e[type=minecraft:block_display,tag=daisukes.bspot_pop]
