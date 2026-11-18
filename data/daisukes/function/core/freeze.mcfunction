# Repte sense comencar (core/lobby): aquest jugador no es pot moure ni saltar, no arriba a cap bloc ni criatura (aixi
# no pot avancar feina abans d'hora) i no rep mal (resistencia V). Ho treu core/unfreeze en comencar.
# Son modificadors d'atribut i es guarden al jugador: si es treu el datapack amb algu quiet, cal treure'ls a ma (README)
tag @s add daisukes.frozen
attribute @s minecraft:movement_speed modifier add daisukes:freeze -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add daisukes:freeze -1 add_multiplied_total
attribute @s minecraft:block_interaction_range modifier add daisukes:freeze -1 add_multiplied_total
attribute @s minecraft:entity_interaction_range modifier add daisukes:freeze -1 add_multiplied_total
effect give @s minecraft:resistance infinite 4 true
