# Cada segon mentre Short Arms no esta actiu: jugadors que estaven desconnectats quan es va acabar
execute if data storage daisukes:state {active: ["no_arms"]} run return 0
execute as @a run function daisukes:modifiers/no_arms/restore
