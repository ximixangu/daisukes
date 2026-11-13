# Cada segon mentre Backwards no esta actiu: markers que s'havien quedat en chunks sense carregar
execute if data storage daisukes:state {active: ["backwards"]} run return 0
kill @e[type=minecraft:marker,tag=daisukes.backwards]
