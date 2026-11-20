# Ctrl+Z: tot el que trenques torna als 4 s, negre i amb la seva forma (costa el doble de trencar i no dona res).
# El que poses et torna a l'inventari als 2 s (menys les coses que es fan servir).
#  daisukes.earth: valors globals, numero de cada jugador i del seu cursor, ordre dels blocs negres i amo d'un bloc posat
#  daisukes.earth_k: el cursor, si el bloc que mira tornaria negre   daisukes.earth_t: temps que falta   daisukes.earth_v: casella de la caixa forta
# Si encara desapareixien els negres d'un cop anterior, fora tots de cop
execute if data storage daisukes:earth {fading: 1b} run function daisukes:modifiers/living_earth/fade_all
scoreboard objectives add daisukes.earth dummy
scoreboard objectives add daisukes.earth_k dummy
scoreboard objectives add daisukes.earth_t dummy
scoreboard objectives add daisukes.earth_v dummy
scoreboard players set #16 daisukes.earth 16
scoreboard players set #256 daisukes.earth 256
scoreboard players set #slot daisukes.earth 0
scoreboard players set #order daisukes.earth 0
scoreboard players set #next daisukes.earth 0
scoreboard players set #sec daisukes.earth 0
scoreboard players set #holes daisukes.earth 0
# Mentre dura, l'avenc where pot saltar (#on)
scoreboard players set #on daisukes.earth 1
advancement revoke @a only daisukes:living_earth/where
advancement revoke @a only daisukes:living_earth/used

# La caixa forta: on es guarda cada bloc trencat (amb el seu estat exacte) fins que torna
execute in minecraft:overworld run forceload add 29999008 29999008
data modify storage daisukes:earth vault set value 1b

# Entrada: la terra es desperta al voltant de cadascu
execute as @a at @s run function daisukes:modifiers/living_earth/intro
