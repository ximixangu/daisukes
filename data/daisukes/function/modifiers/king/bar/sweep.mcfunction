# Cada segon. Barres de corones que no hi son (un /kill, o en un chunk que s'ha descarregat): ningu les veu, que
# si no es quedarien congelades a la pantalla. Si la corona torna (chunk carregat), bar/update les torna a ensenyar
data modify storage daisukes:king sweep set from storage daisukes:king bars
execute if data storage daisukes:king sweep[0] run function daisukes:modifiers/king/bar/sweep_loop
