# Cada segon mentre Laser Limbo no esta actiu: lasers que s'havien quedat en chunks sense carregar
# (p. ex. el mon es va tancar amb el modificador actiu i en tornar-lo a obrir es desactiva abans que es carreguin)
execute if data storage daisukes:state {active: ["laser_limbo"]} run return 0
kill @e[type=minecraft:block_display,tag=daisukes.laser]
