# Cada segon mentre Shadow Beat no esta actiu: ombres que s'havien quedat en chunks sense carregar
# (p. ex. el mon es va tancar amb el modificador actiu i en tornar-lo a obrir es desactiva abans que es carreguin)
execute if data storage daisukes:state {active: ["shadow"]} run return 0
execute as @e[type=minecraft:mannequin,tag=daisukes.shadow] at @s run function daisukes:modifiers/shadow/vanish
