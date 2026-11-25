# Com a jugador que acaba de menjar: la cua creix #grow blocs, fins a #max (s'allarga a mesura que camina). Ho diu a
# sota del titol, amb dues notes de maquineta
execute unless score @s daisukes.sn_len matches 1.. run scoreboard players operation @s daisukes.sn_len = #start daisukes.sn
scoreboard players operation @s daisukes.sn_len += #grow daisukes.sn
execute if score @s daisukes.sn_len > #max daisukes.sn run scoreboard players operation @s daisukes.sn_len = #max daisukes.sn
execute at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 0.8 1.5
execute at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 0.8 2
