# Com tp/scan, a l'aigua (mobs de l'aigua, o els que hi son i no troben terra): baixa per aigua o lloc buit fins a
# trobar dos blocs d'aigua (peus i cap, #daisukes:ender_mobs/water) on el mob hi cap

# Peus i cap a l'aigua i hi cap: salta aqui. Si no hi cap, o el cap surt de l'aigua, prova mes avall
execute if block ~ ~ ~ #daisukes:ender_mobs/water if block ~ ~1 ~ #daisukes:ender_mobs/water if function daisukes:modifiers/ender_mobs/tp/fits run return run function daisukes:modifiers/ender_mobs/tp/land
execute if block ~ ~ ~ #daisukes:ender_mobs/water run return run function daisukes:modifiers/ender_mobs/tp/down
# Aire per sobre de l'aigua: continua baixant. Un bloc, nomes als nivells de dalt (fins als peus); mes avall, no hi
# ha lloc
execute if block ~ ~ ~ #daisukes:ender_mobs/open run return run function daisukes:modifiers/ender_mobs/tp/down
execute if score #h daisukes.em matches 17.. run return run function daisukes:modifiers/ender_mobs/tp/down
return fail
