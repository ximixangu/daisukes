# Cada segon mentre Zombie Tsunami no esta actiu: zombis reforcats que eren en chunks sense carregar
execute if data storage daisukes:state {active: ["zombie_tsunami"]} run return 0
execute as @e[type=minecraft:zombie,tag=daisukes.tsunami] run function daisukes:modifiers/zombie_tsunami/recede

# Versio anterior del datapack: "base set" (2000 blocs de deteccio) i l'etiqueta daisukes_zombie_tsunami
execute as @e[type=minecraft:zombie,tag=daisukes_zombie_tsunami] run function daisukes:modifiers/zombie_tsunami/recede_legacy
