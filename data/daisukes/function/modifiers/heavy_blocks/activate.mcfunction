# Heavy Blocks: els blocs que posa un jugador cauen com la sorra si no tenen res a sota
#  heavy: 1 per a cada jugador mentre esta actiu (sense aquesta puntuacio, l'avancament daisukes:modifiers/heavy_blocks/place no salta) i valors temporals (#...)
scoreboard objectives add daisukes.heavy dummy
advancement revoke @a only daisukes:modifiers/heavy_blocks/place
