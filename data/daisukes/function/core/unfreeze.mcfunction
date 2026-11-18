# El repte ha comencat (o aquest jugador es en creatiu o espectador): es pot tornar a moure (core/lobby, core/freeze)
tag @s remove daisukes.frozen
attribute @s minecraft:movement_speed modifier remove daisukes:freeze
attribute @s minecraft:jump_strength modifier remove daisukes:freeze
attribute @s minecraft:block_interaction_range modifier remove daisukes:freeze
attribute @s minecraft:entity_interaction_range modifier remove daisukes:freeze
effect clear @s minecraft:resistance
