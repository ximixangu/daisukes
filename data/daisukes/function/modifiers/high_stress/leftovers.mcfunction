# Cada segon mentre High Stress no esta actiu: algu que estava desconnectat quan es va acabar
# es quedaria amb mig cor de vida maxima. Se li treu i es cura
execute if data storage daisukes:state {active: ["high_stress"]} run return 0
execute as @a run function daisukes:modifiers/high_stress/leftover_player
