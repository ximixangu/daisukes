# Com al marcador (als peus del jugador en el moment del clic). Distancia per eixos del bloc posat, en blocs sencers:
# els bits que ha apuntat l'avenc daisukes:modifiers/heavy_blocks/where. Amb els dos signes de cada eix surten 8 llocs possibles
scoreboard players set #kx daisukes.heavy 0
scoreboard players set #ky daisukes.heavy 0
scoreboard players set #kz daisukes.heavy 0
execute if entity @a[tag=daisukes.heavy_who,limit=1,advancements={daisukes:modifiers/heavy_blocks/where={x1=true}}] run scoreboard players add #kx daisukes.heavy 1
execute if entity @a[tag=daisukes.heavy_who,limit=1,advancements={daisukes:modifiers/heavy_blocks/where={x2=true}}] run scoreboard players add #kx daisukes.heavy 2
execute if entity @a[tag=daisukes.heavy_who,limit=1,advancements={daisukes:modifiers/heavy_blocks/where={x4=true}}] run scoreboard players add #kx daisukes.heavy 4
execute if entity @a[tag=daisukes.heavy_who,limit=1,advancements={daisukes:modifiers/heavy_blocks/where={y1=true}}] run scoreboard players add #ky daisukes.heavy 1
execute if entity @a[tag=daisukes.heavy_who,limit=1,advancements={daisukes:modifiers/heavy_blocks/where={y2=true}}] run scoreboard players add #ky daisukes.heavy 2
execute if entity @a[tag=daisukes.heavy_who,limit=1,advancements={daisukes:modifiers/heavy_blocks/where={y4=true}}] run scoreboard players add #ky daisukes.heavy 4
execute if entity @a[tag=daisukes.heavy_who,limit=1,advancements={daisukes:modifiers/heavy_blocks/where={z1=true}}] run scoreboard players add #kz daisukes.heavy 1
execute if entity @a[tag=daisukes.heavy_who,limit=1,advancements={daisukes:modifiers/heavy_blocks/where={z2=true}}] run scoreboard players add #kz daisukes.heavy 2
execute if entity @a[tag=daisukes.heavy_who,limit=1,advancements={daisukes:modifiers/heavy_blocks/where={z4=true}}] run scoreboard players add #kz daisukes.heavy 4
# Endavant, k + 0,4999; enrere, -(k + 0,5): cada un cau dins d'un sol bloc, el que esta a aquesta distancia
scoreboard players operation #t daisukes.heavy = #kx daisukes.heavy
scoreboard players operation #t daisukes.heavy *= #10000 daisukes.heavy
scoreboard players add #t daisukes.heavy 4999
execute store result storage daisukes:heavy w.px double 0.0001 run scoreboard players get #t daisukes.heavy
scoreboard players add #t daisukes.heavy 1
execute store result storage daisukes:heavy w.mx double -0.0001 run scoreboard players get #t daisukes.heavy
scoreboard players operation #t daisukes.heavy = #ky daisukes.heavy
scoreboard players operation #t daisukes.heavy *= #10000 daisukes.heavy
scoreboard players add #t daisukes.heavy 4999
execute store result storage daisukes:heavy w.py double 0.0001 run scoreboard players get #t daisukes.heavy
scoreboard players add #t daisukes.heavy 1
execute store result storage daisukes:heavy w.my double -0.0001 run scoreboard players get #t daisukes.heavy
scoreboard players operation #t daisukes.heavy = #kz daisukes.heavy
scoreboard players operation #t daisukes.heavy *= #10000 daisukes.heavy
scoreboard players add #t daisukes.heavy 4999
execute store result storage daisukes:heavy w.pz double 0.0001 run scoreboard players get #t daisukes.heavy
scoreboard players add #t daisukes.heavy 1
execute store result storage daisukes:heavy w.mz double -0.0001 run scoreboard players get #t daisukes.heavy
scoreboard players set #n daisukes.heavy 0
function daisukes:modifiers/heavy_blocks/cands with storage daisukes:heavy w
