# Cada segon mentre Thunderstruck no esta actiu: marques de llamp en chunks que no estaven carregats
execute if data storage daisukes:state {active: ["thunderstruck"]} run return 0
kill @e[type=minecraft:marker,tag=daisukes.thunder_target]
