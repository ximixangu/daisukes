# Cada segon mentre Gorgun's Gaze no esta actiu: ulls en chunks que no estaven carregats, i jugadors que
# estaven desconnectats quan es va acabar (es quedarien petrificats per sempre)
execute if data storage daisukes:state {active: ["gorguns_gaze"]} run return 0
kill @e[type=minecraft:text_display,tag=daisukes.gorgun_eye]
execute as @a[scores={daisukes.petrified=1..}] run function daisukes:modifiers/gorguns_gaze/stone_end
