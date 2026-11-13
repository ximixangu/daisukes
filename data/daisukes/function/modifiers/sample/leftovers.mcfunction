# Opcional. Cada segon, mentre aquest modificador NO esta actiu (core/leftovers):
# treu el que hagi quedat en entitats que no estaven carregades o jugadors que estaven desconnectats
execute if data storage daisukes:state {active: ["sample"]} run return 0
# kill @e[type=minecraft:marker,tag=daisukes.sample]
