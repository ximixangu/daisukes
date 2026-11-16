# Cada segon (core/leftovers), nomes si Grasping Roots no esta actiu: arrels en chunks sense carregar
# i jugadors que eren desconnectats quan es va acabar (i l'etiqueta daisukes.roots_target de la versio anterior)
execute if data storage daisukes:state {active: ["roots"]} run return 0
kill @e[tag=daisukes.roots,type=!minecraft:player]
execute as @a[tag=daisukes.roots_tied] run function daisukes:modifiers/roots/unbind
tag @a[tag=daisukes.roots_target] remove daisukes.roots_target
