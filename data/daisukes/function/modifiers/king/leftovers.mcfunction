# Cada segon mentre Long Live the King no esta actiu (core/leftovers): corones i Reis que eren en chunks sense
# carregar quan es va acabar, i jugadors que portaven corona i estaven desconnectats.
# (La Resistencia dels monstres protegits s'acaba sola en 1 s, i els hereus sense corona no tenen cap efecte)
execute if data storage daisukes:state {active: ["king"]} run return 0
kill @e[type=minecraft:text_display,tag=daisukes.king_crown]
execute as @e[tag=daisukes.king] run function daisukes:modifiers/king/ruler/strip
tag @a[tag=daisukes.king_wearer] remove daisukes.king_wearer
