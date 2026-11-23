# Busca on posar-se dret en aquesta columna, de dalt a baix (#h nivells: d'1 per sobre dels peus, o 2 a l'aigua,
# fins a 16 per sota). Com util/teleport/scan, pero les plantes i altres blocs sense col.lisio tambe son lloc buit
# (#daisukes:ender_mobs/open): nomes baixa per lloc buit, mai a traves de blocs

# Peus dins d'un bloc: als nivells de dalt (fins als peus del mob) pot ser el sostre, una paret o l'aigua on neda, i
# es mira el de sota. Mes avall vol dir que la columna es plena: no hi ha lloc
execute unless block ~ ~ ~ #daisukes:ender_mobs/open if score #h daisukes.em matches 17.. run return run function daisukes:modifiers/ender_mobs/tp/down
execute unless block ~ ~ ~ #daisukes:ender_mobs/open run return fail

# Peus lliures: si hi cap el cap, el terra l'aguanta (com util/teleport: res de liquid, foc, cactus, tanques...)
# i el mob hi cap (tp/fits), salta aqui
execute if block ~ ~1 ~ #daisukes:ender_mobs/open unless block ~ ~-1 ~ #daisukes:ender_mobs/open unless block ~ ~-1 ~ #daisukes:teleport/no_floor if function daisukes:modifiers/ender_mobs/tp/fits run return run function daisukes:modifiers/ender_mobs/tp/land

# A sota tambe hi ha lloc buit: continua baixant. Si no, aqui no hi ha lloc
execute if block ~ ~-1 ~ #daisukes:ender_mobs/open run return run function daisukes:modifiers/ender_mobs/tp/down
return fail
