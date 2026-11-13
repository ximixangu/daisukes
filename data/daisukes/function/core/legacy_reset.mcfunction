# Com a jugador, el primer cop que entra amb aquesta versio. La versio anterior canviava valors base
# d'atributs ("base set") i posava etiquetes sense prefix: a qui estava desconnectat quan es va acabar
# el modificador se li podien haver quedat enganxats. Es tornen als valors per defecte.
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:step_height base reset
attribute @s minecraft:block_interaction_range base reset
attribute @s minecraft:entity_interaction_range base reset
attribute @s minecraft:max_health base reset
attribute @s minecraft:gravity base reset
tag @s remove moon
tag @s remove darken
tag @s remove icarus_stop
tag @s remove icarus_airborne
