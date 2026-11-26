# Cada segon (core/leftovers), si Katamari no es actiu: els jugadors que estaven desconnectats quan es va acabar tornen
# a la mida normal, i qui es va quedar a l'aire perd la caiguda segura quan toca a terra
execute if data storage daisukes:state {active: ["katamari"]} run return 0
execute as @a[tag=daisukes.km] run function daisukes:modifiers/katamari/attr/clear
execute as @a[tag=daisukes.km_land] if predicate daisukes:katamari/on_ground run function daisukes:modifiers/katamari/landed
