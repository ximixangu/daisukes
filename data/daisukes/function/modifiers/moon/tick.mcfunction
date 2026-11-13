# Jugadors: cada tick (en morir perden els modificadors, i qui entra tard tambe els ha de tenir)
execute as @a run function daisukes:modifiers/moon/apply

# Mobs nous: un sol cop cadascun. Abans, cada entitat nova tornava a passar per TOTES les del mon
execute as @e[type=!minecraft:player,type=!#daisukes:non_mob,tag=!daisukes.moon] run function daisukes:modifiers/moon/apply
