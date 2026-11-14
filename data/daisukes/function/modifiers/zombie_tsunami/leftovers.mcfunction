# Cada segon mentre Zombie Tsunami no esta actiu: zombis reforcats que eren en chunks sense carregar
execute if data storage daisukes:state {active: ["zombie_tsunami"]} run return 0
execute as @e[type=minecraft:zombie,tag=daisukes.tsunami] run function daisukes:modifiers/zombie_tsunami/recede
