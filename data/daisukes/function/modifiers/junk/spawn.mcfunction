# Al punt triat, a l'alcada dels peus del jugador. Si hi ha un bloc (una pujada, una paret...), 1 o 2 blocs mes amunt;
# si tampoc hi cap, aquest cop res
execute if block ~ ~ ~ #minecraft:replaceable run return run function daisukes:modifiers/junk/summon
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:replaceable run return run function daisukes:modifiers/junk/summon
execute positioned ~ ~2 ~ if block ~ ~ ~ #minecraft:replaceable run function daisukes:modifiers/junk/summon
