# Com al jugador del salt que toca a terra. Si encara no s'ha vist enlaire (el servidor ho sap una mica tard), espera
execute if entity @s[tag=daisukes.jk_air] run return run function daisukes:modifiers/jump_king/land
execute if score @s daisukes.jk_t matches 20.. run function daisukes:modifiers/jump_king/end
