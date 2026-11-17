# Recompensa de l'avancament used (item_used_on_block): el joc el crida en acabar el clic, despres de placed_block.
# Si acaba de posar un bloc, ara es busca. Les distancies sempre es treuen, que el seguent clic comenci net
advancement revoke @s only daisukes:modifiers/heavy_blocks/used
execute if entity @s[tag=daisukes.heavy_placing] run function daisukes:modifiers/heavy_blocks/finish
advancement revoke @s only daisukes:modifiers/heavy_blocks/where
