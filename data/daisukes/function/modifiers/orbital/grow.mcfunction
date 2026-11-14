# Creix a poc a poc fins que comenca a inflar-se (3 ticks abans d'esclatar)
scoreboard players set #k daisukes.orb 1350
scoreboard players operation #d daisukes.orb = #left daisukes.orb
scoreboard players remove #d daisukes.orb 3
function daisukes:modifiers/orbital/scale
