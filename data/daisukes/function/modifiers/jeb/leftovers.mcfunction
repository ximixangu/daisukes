# Cada segon mentre jeb_ no esta actiu: ovelles que s'havien quedat en chunks sense carregar (sense TNT)
execute if data storage daisukes:state {active: ["jeb"]} run return 0
kill @e[type=minecraft:sheep,tag=daisukes.jeb_sheep]
