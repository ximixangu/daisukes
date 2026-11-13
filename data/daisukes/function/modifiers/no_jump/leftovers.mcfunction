# Cada segon mentre Broken Legs no esta actiu: jugadors que estaven desconnectats quan es va acabar
execute if data storage daisukes:state {active: ["no_jump"]} run return 0
execute as @a run attribute @s minecraft:jump_strength modifier remove daisukes:no_jump
