# Cada segon mentre Supersonic no esta actiu: jugadors que estaven desconnectats quan es va acabar
execute if data storage daisukes:state {active: ["sonic"]} run return 0
execute as @a run function daisukes:modifiers/sonic/restore
