# Macro {far, ox, oz}, com a jugador: busca on caure, far blocs mes enlla d'on ha trepitjat (direccio dir).
# Hi caura al centre de costat i just entrant (a 0,3 de la vora): amb tot el cos dins, sense quedar mig dins
# d'una paret, i sense guanyar distancia de franc
$scoreboard players set #steps daisukes.ender_step $(far)
scoreboard players set #h daisukes.ender_step 0
$execute align xyz positioned ~0.5 ~ ~0.5 positioned ~$(ox) ~ ~$(oz) run function daisukes:modifiers/ender_step/path with storage daisukes:ender_step dir
