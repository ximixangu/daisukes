# Un bloc afegit a un que ja hi era: als 2 s nomes torna el que s'hi ha afegit, i el que hi havia es queda
execute if entity @e[type=minecraft:marker,tag=daisukes.earth_placed,distance=..0.5] run return 0
function daisukes:modifiers/living_earth/mark
execute as @e[type=minecraft:marker,tag=daisukes.earth_placed,distance=..0.01] run function daisukes:modifiers/living_earth/mark_prev
