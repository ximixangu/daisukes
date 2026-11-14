# Cada segon mentre Ender Step no esta actiu: jugadors que estaven desconnectats quan es va acabar
# (o el mon es va tancar amb el modificador actiu)
execute if data storage daisukes:state {active: ["ender_step"]} run return 0
execute as @a run function daisukes:modifiers/ender_step/restore
