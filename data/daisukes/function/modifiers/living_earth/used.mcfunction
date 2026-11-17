# Recompensa de l'avenc used (item_used_on_block): el joc el crida en acabar el clic, despres de placed_block.
# Si acaba de posar un bloc, ara es busca. Les distancies sempre es treuen, que el seguent clic comenci net
advancement revoke @s only daisukes:living_earth/used
execute if entity @s[tag=daisukes.earth_placing] run function daisukes:modifiers/living_earth/finish
advancement revoke @s only daisukes:living_earth/where
