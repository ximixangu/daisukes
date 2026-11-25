# Cada segon (core/leftovers), si Snake no es actiu: fora els trossos que hagin quedat (els que s'encongien en acabar
# i els que eren en chunks sense carregar) i les etiquetes dels jugadors que eren desconnectats
execute if data storage daisukes:state {active: ["snake"]} run return 0
kill @e[type=minecraft:block_display,tag=daisukes.sn]
tag @a remove daisukes.sn_on
tag @a remove daisukes.sn_me
